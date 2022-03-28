locals {
  naming = {
    location = {
      "eastus" = "estus"
    }
  }
}

data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "vn" {
  name = var.vn_resource_group_name
}

resource "azurerm_resource_group" "databricks" {
  name     = var.databricks_resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "azure_sql" {
  name     = var.azure_sql_resource_group_name
  location = var.location
}

locals {
  vn_resource_group_id       = data.azurerm_resource_group.vn.id
  vn_resource_group_location = data.azurerm_resource_group.vn.location

  databricks_resource_group_id       = azurerm_resource_group.databricks.id
  databricks_resource_group_location = azurerm_resource_group.databricks.id

  azure_sql_resource_group_id       = azurerm_resource_group.azure_sql.id
  azure_sql_resource_group_location = azurerm_resource_group.azure_sql.location
}

resource "azurerm_key_vault" "this" {
  name = format("kv-%s-%s-%s",
  local.naming.location[var.location], var.environment, var.project)


  resource_group_name = var.azure_sql_resource_group_name
  location            = azurerm_resource_group.azure_sql.location
  tenant_id           = data.azurerm_client_config.current.tenant_id

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Get",
      "Set",
      "Delete",
      "Recover",
      "Purge"
    ]
  }
}