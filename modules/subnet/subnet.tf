resource "azurerm_subnet" "GatewaySubnet" {
  address_prefixes                               = var.GatewaySubnet_address_prefixes
  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "GatewaySubnet"
  resource_group_name                            = var.rg-connectivity01_name
  virtual_network_name                           = var.vnet-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-Data01" {
  address_prefixes                               = var.vnetsub-Data01_address_prefixes
  enforce_private_link_endpoint_network_policies = "true"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "vnetsub-Data01"
  resource_group_name                            = var.rg-connectivity01_name
  service_endpoints                              = ["Microsoft.Sql"]
  virtual_network_name                           = var.vnet-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-Web01" {
  address_prefixes = var.vnetsub-Web01_address_prefixes

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
  resource_group_name                            = var.rg-connectivity01_name
  virtual_network_name                           = var.vnet-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-Web01-priv" {
  address_prefixes = var.vnetsub-Web01-priv_address_prefixes
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
  resource_group_name                            = var.rg-connectivity01_name
  virtual_network_name                           = var.vnet-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-management01" {
  address_prefixes = var.vnetsub-management01_address_prefixes

  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "vnetsub-management01"
  resource_group_name                            = var.rg-connectivity01_name
  virtual_network_name                           = var.vnet-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-trustgateway01" {
  address_prefixes = var.vnetsub-trustgateway01_address_prefixes

  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "vnetsub-trustgateway01"
  resource_group_name                            = var.rg-connectivity01_name
  virtual_network_name                           = var.vnet-eus-generalnetwork001_name
}

resource "azurerm_subnet" "vnetsub-untrust01" {
  address_prefixes = var.vnetsub-untrust01_address_prefixes

  enforce_private_link_endpoint_network_policies = "false"
  enforce_private_link_service_network_policies  = "false"
  name                                           = "vnetsub-untrust01"
  resource_group_name                            = var.rg-connectivity01_name
  virtual_network_name                           = var.vnet-eus-generalnetwork001_name
}
