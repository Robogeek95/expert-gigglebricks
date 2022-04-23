
resource "random_password" "sql_administrator_login" {
  length  = 16
  special = false
}

resource "azurerm_sql_server" "signature-msql-databricks" {
  name = format("signature-msql-databricks32118989182")

  resource_group_name          = var.rg-databricks-signature-azuresql_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "databricks"
  administrator_login_password = random_password.sql_administrator_login.result
}

resource "azurerm_storage_account" "dbsignaturesa" {
  name                     = "dbsignaturesa21ee12e213"
  resource_group_name      = var.rg-databricks-signature-azuresql_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  /* network_rules {
    default_action             = "Deny"
    virtual_network_subnet_ids = [data.azurerm_subnet.vnetsub-Data01.id]
  } */
}

resource "azurerm_sql_database" "databricks-signature-sql-db" {
  name                = "databricks-signature-sql-db"
  resource_group_name = var.rg-databricks-signature-azuresql_name
  server_name         = azurerm_sql_server.signature-msql-databricks.name
  location            = var.location
  /* 
  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.this.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.this.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  } */
}
