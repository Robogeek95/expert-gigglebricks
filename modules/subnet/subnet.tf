resource "azurerm_subnet" "GatewaySubnet" {
  address_prefixes                               = ["10.96.0.192/26"]
  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "GatewaySubnet"
  resource_group_name                            = var.rg-t-connectivity01_name
  virtual_network_name                           = var.vnet-t-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-Data01" {
  address_prefixes                               = ["10.96.3.0/24"]
  enforce_private_link_endpoint_network_policies = "true"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "vnetsub-Data01"
  resource_group_name                            = var.rg-t-connectivity01_name
  service_endpoints                              = ["Microsoft.Sql"]
  virtual_network_name                           = var.vnet-t-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-Web01" {
  address_prefixes = ["10.96.5.0/24"]

  delegation {
    name = "databricks-delegation"

    service_delegation {
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action", "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"]
      name    = "Microsoft.Databricks/workspaces"
    }
  }

  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "true"
  name                                           = "vnetsub-Web01"
  resource_group_name                            = var.rg-t-connectivity01_name
  virtual_network_name                           = var.vnet-t-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-Web01-priv" {
  address_prefixes = ["10.96.2.0/24"]

  delegation {
    name = "databricks-delegation"

    service_delegation {
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action", "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action"]
      name    = "Microsoft.Databricks/workspaces"
    }
  }

  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "true"
  name                                           = "vnetsub-Web01-priv"
  resource_group_name                            = var.rg-t-connectivity01_name
  virtual_network_name                           = var.vnet-t-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-management01" {
  address_prefixes                               = ["10.96.0.128/26"]
  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "vnetsub-management01"
  resource_group_name                            = var.rg-t-connectivity01_name
  virtual_network_name                           = var.vnet-t-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-trustgateway01" {
  address_prefixes                               = ["10.96.0.64/26"]
  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "vnetsub-trustgateway01"
  resource_group_name                            = var.rg-t-connectivity01_name
  virtual_network_name                           = var.vnet-t-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-untrust01" {
  address_prefixes                               = ["10.96.0.0/26"]
  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "vnetsub-untrust01"
  resource_group_name                            = var.rg-t-connectivity01_name
  virtual_network_name                           = var.vnet-t-eus-generalnetwork001_name
}
