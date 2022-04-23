output "azurerm_sql_server_signature-msql-databricks_id" {
  value = azurerm_sql_server.signature-msql-databricks.id
}

output "azurerm_sql_database_databricks-signature-sql-db" {
  value = azurerm_sql_database.databricks-signature-sql-db.id
}

output "azurerm_storage_account_dbsignaturesa_name" {
  value = azurerm_storage_account.dbsignaturesa.name
}

output "azurerm_storage_account_dbsignaturesa_id" {
  value = azurerm_storage_account.dbsignaturesa.id
}
