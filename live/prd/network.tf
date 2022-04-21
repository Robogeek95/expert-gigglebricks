resource "azurerm_virtual_network" "this" {
  name                = var.virtual_network_name
  resource_group_name = var.vn_resource_group_name
  location            = azurerm_resource_group.vn.location
  address_space       = var.virtual_network_address_prefix
}

resource "azurerm_subnet" "vnetsub-Data01" {
  name                 = "vnetsub-Data01"
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.vn_resource_group_name
  address_prefixes = var.data_subnet_address_prefixes

  enforce_private_link_service_network_policies = true
  enforce_private_link_endpoint_network_policies = true

  depends_on = [
    azurerm_virtual_network.this
  ]
}

resource "azurerm_network_security_group" "vnetsub-Data01" {
  name = format("nsg-t-vnetsub-Data01")

  resource_group_name = var.vn_resource_group_name
  location            = azurerm_resource_group.vn.location
}

resource "azurerm_subnet_network_security_group_association" "vnetsub-Data01" {
  subnet_id                 = azurerm_subnet.vnetsub-Data01.id
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

  depends_on = [
    azurerm_virtual_network.this
  ]
}

resource "azurerm_network_security_group" "public" {
  name = format("nsg-t-vnetsub-Web01")

  resource_group_name = var.vn_resource_group_name
  location            = azurerm_resource_group.vn.location
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

  depends_on = [
    azurerm_virtual_network.this
  ]
}

resource "azurerm_network_security_group" "private" {
  name = format("nsg-t-vnetsub-Weba01")

  resource_group_name = var.vn_resource_group_name
  location            = azurerm_resource_group.vn.location
}

resource "azurerm_subnet_network_security_group_association" "private" {
  subnet_id                 = azurerm_subnet.private.id
  network_security_group_id = azurerm_network_security_group.private.id
}

resource "azurerm_lb" "this" {
  sku                 = var.load_balancer_sku
  name                = "databricks-TestLoadBalancer"
  location            = azurerm_resource_group.vn.location
  resource_group_name = var.vn_resource_group_name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = module.public_ip.azurerm_public_ip_pubIp-eastus-dev-test_id
  }
}

resource "azurerm_lb_backend_address_pool" "this" {
  name = format("addpool-%s-%s-%s",
  azurerm_resource_group.vn.location, var.environment, var.project)
  loadbalancer_id = azurerm_lb.this.id
}
