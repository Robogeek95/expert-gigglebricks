resource "azurerm_resource_group" "NetworkWatcherRG" {
  location = "eastus"
  name     = "NetworkWatcherRG"
}

resource "azurerm_resource_group" "databricks-rg-databricks-signature" {
  location = "eastus"
  name     = "databricks-rg-databricks-signature"
}

resource "azurerm_resource_group" "databricks-signature" {
  location = "eastus"
  name     = "databricks-signature"
}

resource "azurerm_resource_group" "databricks-signature-azuresql" {
  location = "eastus"
  name     = "databricks-signature-azuresql"
}

resource "azurerm_resource_group" "rg-t-connectivity01" {
  location = "eastus"
  name     = "rg-t-connectivity01"

  tags = {
    Application = "Vnet"
    Description = "SecDev test of network"
    Environment = "Dev"
  }
}

resource "azurerm_resource_group" "rg-t-vmtest01" {
  location = "eastus"
  name     = "rg-t-vmtest01"
}

resource "azurerm_resource_group" "rg-zscaler-zpa-connector" {
  location = "uksouth"
  name     = "rg-zscaler-zpa-connector"
}
