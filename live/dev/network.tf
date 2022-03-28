data "azurerm_virtual_network" "this" {
  name                = var.virtual_network_name
  resource_group_name = var.vn_resource_group_name
}

data "azurerm_subnet" "vnetsub-Data01" {
  name                 = "vnetsub-Data01"
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.vn_resource_group_name
}

resource "azurerm_network_security_group" "vnetsub-Data01" {
  name = format("nsg-t-vnetsub-Data01")

  resource_group_name = var.vn_resource_group_name
  location            = data.azurerm_resource_group.vn.location
}

resource "azurerm_subnet_network_security_group_association" "vnetsub-Data01" {
  subnet_id                 = data.azurerm_subnet.vnetsub-Data01.id
  network_security_group_id = azurerm_network_security_group.vnetsub-Data01.id
}

resource "azurerm_subnet" "public" {
  name = format("vnetsub-Web01")

  resource_group_name                           = var.vn_resource_group_name
  virtual_network_name                          = var.virtual_network_name
  address_prefixes                              = var.private_subnet_address_prefixes
  enforce_private_link_service_network_policies = true

  delegation {
    name = "databricks-delegation"

    service_delegation {
      name = "Microsoft.Databricks/workspaces"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
        "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
        "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
      ]
    }
  }
}

resource "azurerm_network_security_group" "public" {
  name = format("nsg-t-vnetsub-Web01")

  resource_group_name = var.vn_resource_group_name
  location            = data.azurerm_resource_group.vn.location
}

resource "azurerm_subnet_network_security_group_association" "public" {
  subnet_id                 = azurerm_subnet.public.id
  network_security_group_id = azurerm_network_security_group.public.id
}

resource "azurerm_subnet" "private" {
  name = format("vnetsub-Web01-priv")

  resource_group_name                           = var.vn_resource_group_name
  virtual_network_name                          = var.virtual_network_name
  address_prefixes                              = var.public_subnet_address_spaces
  enforce_private_link_service_network_policies = true

  delegation {
    name = "databricks-delegation"

    service_delegation {
      name = "Microsoft.Databricks/workspaces"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/join/action",
        "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
        "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",
      ]
    }
  }
}

resource "azurerm_network_security_group" "private" {
  name = format("nsg-t-vnetsub-Weba01")

  resource_group_name = var.vn_resource_group_name
  location            = data.azurerm_resource_group.vn.location
}

resource "azurerm_subnet_network_security_group_association" "private" {
  subnet_id                 = azurerm_subnet.private.id
  network_security_group_id = azurerm_network_security_group.private.id
}

resource "azurerm_public_ip" "this" {
  name = format("pubIp-%s-%s-%s",
  data.azurerm_resource_group.vn.location, var.environment, var.project)
  location            = data.azurerm_resource_group.vn.location
  resource_group_name = var.vn_resource_group_name
  allocation_method   = var.allocation_method
  sku                 = var.public_ip_sku
}

resource "azurerm_lb" "this" {
  sku                 = var.load_balancer_sku
  name                = "databricks-TestLoadBalancer"
  location            = data.azurerm_resource_group.vn.location
  resource_group_name = var.vn_resource_group_name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.this.id
  }
}

resource "azurerm_lb_backend_address_pool" "this" {
  name = format("addpool-%s-%s-%s",
  data.azurerm_resource_group.vn.location, var.environment, var.project)
  loadbalancer_id = azurerm_lb.this.id
}

resource "azurerm_private_link_service" "this" {
  name                = "databricks-privatelink"
  location            = data.azurerm_resource_group.vn.location
  resource_group_name = var.vn_resource_group_name

  auto_approval_subscription_ids              = ["00000000-0000-0000-0000-000000000000"]
  visibility_subscription_ids                 = ["00000000-0000-0000-0000-000000000000"]
  load_balancer_frontend_ip_configuration_ids = [azurerm_lb.this.frontend_ip_configuration.0.id]

  nat_ip_configuration {
    name                       = "primary"
    private_ip_address         = var.private_link_primary_private_ip_address
    private_ip_address_version = "IPv4"
    subnet_id                  = azurerm_subnet.public.id
    primary                    = true
  }

  nat_ip_configuration {
    name                       = "secondary"
    private_ip_address         = var.private_link_secondary_private_ip_address
    private_ip_address_version = "IPv4"
    subnet_id                  = azurerm_subnet.public.id
    primary                    = false
  }
}
