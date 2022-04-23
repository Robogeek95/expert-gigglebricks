resource "azurerm_virtual_network" "vnet-eus-generalnetwork001" {
  address_space           = var.address_space
  location                = "eastus"
  name                    = "vnet-eus-generalnetwork001"
  resource_group_name     = var.rg-connectivity01_name
}
