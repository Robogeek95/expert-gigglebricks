resource "azurerm_sql_server" "signature-msql-databricks" {
  administrator_login          = "sqladmin"
  administrator_login_password = ""
  connection_policy            = "Default"
  location                     = var.location
  name                         = "signature-msql-databricks"
  resource_group_name          = var.rg-databricks-signature-azuresql_name

  tags = {
    environment = "development"
  }

  threat_detection_policy {
    email_account_admins = "false"
    retention_days       = "0"
    state                = "Disabled"
  }

  version = "12.0"
}
