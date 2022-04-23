terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.3.0"
    }

    databricks = {
      source  = "databrickslabs/databricks"
      version = "0.5.5"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "e17f6d2e-9270-4f7e-9252-f2009d55bec4"
}

provider "databricks" {
  azure_workspace_resource_id = azurerm_databricks_workspace.this.id
}
