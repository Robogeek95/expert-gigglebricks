resource "azurerm_storage_container" "container-t-vpngw-diag" {
  container_access_type = "private"
  name                  = "container-t-vpngw-diag"
  storage_account_name  = var.storage_account_rgtvm01diag_name
}

resource "azurerm_storage_container" "ephemeral" {}

resource "azurerm_storage_container" "jobs" {}

resource "azurerm_storage_container" "logs" {}

resource "azurerm_storage_container" "meta" {}

resource "azurerm_storage_container" "root" {}
resource "azurerm_storage_container" "sqldbauditlogs" {
  container_access_type = "private"
  name                  = "sqldbauditlogs"
  storage_account_name  = var.databrickssa_name
}
