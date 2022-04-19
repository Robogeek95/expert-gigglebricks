provider "azurerm" {
  features {}

  subscription_id = "6b6c23ac-12a7-4ddb-9a8e-043f53d430ff"
}

provider "databricks" {
  azure_workspace_resource_id = azurerm_databricks_workspace.this.id
}