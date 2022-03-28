resource "azurerm_key_vault_secret" "sql_administrator_login" {
  name         = "sql-administrator-login"
  value        = "sqladmin"
  key_vault_id = azurerm_key_vault.this.id
}

resource "random_password" "sql_administrator_login" {
  length  = 16
  special = false
}

resource "azurerm_key_vault_secret" "sql_administrator_login_password" {
  name         = "sql-administrator-login-password"
  value        = random_password.sql_administrator_login.result
  key_vault_id = azurerm_key_vault.this.id
}

resource "azurerm_sql_server" "this" {
  name = format("signature-msql-databricks")

  resource_group_name          = var.azure_sql_resource_group_name
  location                     = azurerm_resource_group.azure_sql.location
  version                      = "12.0"
  administrator_login          = azurerm_key_vault_secret.sql_administrator_login.value
  administrator_login_password = azurerm_key_vault_secret.sql_administrator_login_password.value

  tags = {
    environment = "development"
  }
}

resource "azurerm_sql_active_directory_administrator" "this" {
  server_name         = azurerm_sql_server.this.name
  resource_group_name = var.azure_sql_resource_group_name
  login               = "signature-sqladmin"
  tenant_id           = data.azurerm_client_config.current.tenant_id
  object_id           = data.azurerm_client_config.current.object_id
}

resource "azurerm_storage_account" "this" {
  name                     = "databrickssignaturesa"
  resource_group_name      = var.azure_sql_resource_group_name
  location                 = azurerm_resource_group.azure_sql.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  /* network_rules {
    default_action             = "Deny"
    virtual_network_subnet_ids = [data.azurerm_subnet.vnetsub-Data01.id]
  } */
}

resource "azurerm_sql_database" "this" {
  name                = "databricks-signature-sql-db"
  resource_group_name = var.azure_sql_resource_group_name
  server_name         = azurerm_sql_server.this.name
  location            = azurerm_resource_group.azure_sql.location

  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.this.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.this.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  }
}
