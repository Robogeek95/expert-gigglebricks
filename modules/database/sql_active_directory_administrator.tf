resource "azurerm_sql_active_directory_administrator" "ActiveDirectory" {
  azuread_authentication_only = "false"
  login                       = "SEC-SQLServer-Admins"
  object_id                   = "9e268bbf-2be2-4771-a31e-4a45f72918ff"
  resource_group_name         = var.rg-databricks-signature-azuresql_name
  server_name                 = var.server_name
  tenant_id                   = "de810bec-18a3-479a-8c6f-185945c981d3"
}
