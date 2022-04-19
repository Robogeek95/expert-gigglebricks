resource "azurerm_sql_database" "databricks-signature-sql-db-signature-msql-databricks" {
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  edition                          = "GeneralPurpose"
  location                         = var.location
  max_size_bytes                   = "107374182400"
  name                             = "databricks-signature-sql-db"
  read_scale                       = "false"
  requested_service_objective_id   = "f21733ad-9b9b-4d4e-a4fa-94a133c41718"
  requested_service_objective_name = "GP_Gen5_2"
  resource_group_name              = var.rg-databricks-signature-azuresql_name
  server_name                      = var.server_name

  threat_detection_policy {
    email_account_admins = "Disabled"
    retention_days       = "0"
    state                = "Disabled"
  }

  zone_redundant = "false"
}

resource "azurerm_sql_database" "master-signature-msql-databricks" {
  collation                        = "SQL_Latin1_General_CP1_CI_AS"
  edition                          = "System"
  location                         = var.location
  max_size_bytes                   = "53687091200"
  name                             = "master"
  read_scale                       = "false"
  requested_service_objective_id   = "620323bf-2879-4807-b30d-c2e6d7b3b3aa"
  requested_service_objective_name = "System2"
  resource_group_name              = var.rg-databricks-signature-azuresql_name
  server_name                      = var.server_name

  threat_detection_policy {
    email_account_admins = "Disabled"
    retention_days       = "0"
    state                = "Disabled"
  }

  zone_redundant = "false"
}
