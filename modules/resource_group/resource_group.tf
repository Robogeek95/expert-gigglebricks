resource "azurerm_resource_group" "NetworkWatcherRG" {
  location = "eastus"
  name     = "NetworkWatcherRG"
}

resource "azurerm_resource_group" "databricks-signature" {
  location = "eastus"
  name     = "databricks-signature"
}

resource "azurerm_resource_group" "databricks-signature-azuresql" {
  location = "eastus"
  name     = "databricks-signature-azuresql"
}

resource "azurerm_resource_group" "rg-connectivity01" {
  location = "eastus"
  name     = "rg-connectivity01"

  tags = {
    Application = "Vnet"
    Description = "SecDev test of network"
    Environment = "Dev"
  }
}

resource "azurerm_resource_group" "rg-vmcomp01" {
  location = "eastus"
  name     = "rg-vmcomp01"
}

resource "azurerm_resource_group" "rg-zscaler-zpa-connector" {
  location = "uksouth"
  name     = "rg-zscaler-zpa-connector"
}
