provider "azurerm" {
  features {}

  subscription_id = "05b29857-413e-4db4-b399-96f5339c9c8f"
}

provider "databricks" {
  azure_workspace_resource_id = azurerm_databricks_workspace.this.id
}