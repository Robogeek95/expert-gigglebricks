resource "azurerm_virtual_network" "vnet-t-eus-generalnetwork001" {
  address_space           = ["10.96.0.0/21"]
  location                = "eastus"
  name                    = "vnet-t-eus-generalnetwork001"
  resource_group_name     = var.rg-t-connectivity01_name
}
