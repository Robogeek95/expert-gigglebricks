resource "azurerm_key_vault" "kv-estus-dev-test" {
  access_policy {
    certificate_permissions = ["Backup", "Create", "Delete", "Get",                                                                                                                                                         "Import", "List", "ListIssuers", "ManageContacts", "ManageIssuers", "Recover", "Restore", "SetIssuers", "Update"]
    key_permissions         = ["Backup", "Create", "Delete", "Get", "Import", "List", "Recover", "Restore", "Update"]
    object_id               = "e7296dba-732b-42bb-a060-85ba996438f7"
    secret_permissions      = ["Backup", "Delete", "Get", "List", "Recover", "Restore", "Set"]
    tenant_id               = "de810bec-18a3-479a-8c6f-185945c981d3"
  }

  access_policy {
    object_id          = "89cde37c-e3d9-43e3-940e-ff86f6af4779"
    secret_permissions = ["Get", "List"]
    tenant_id          = "de810bec-18a3-479a-8c6f-185945c981d3"
  }

  access_policy {
    object_id          = "e0a1bdce-0834-4b91-a7dc-e28873369202"
    secret_permissions = ["Delete", "Get", "Purge", "Recover", "Set"]
    tenant_id          = "de810bec-18a3-479a-8c6f-185945c981d3"
  }

  enable_rbac_authorization       = "false"
  enabled_for_deployment          = "false"
  enabled_for_disk_encryption     = "false"
  enabled_for_template_deployment = "false"
  location                        = var.location
  name                            = "kv-estus-dev-test"

  network_acls {
    bypass         = "AzureServices"
    default_action = "Allow"
  }

  purge_protection_enabled   = "false"
  resource_group_name        = var.rg-databricks-signature_name
  sku_name                   = "standard"
  soft_delete_retention_days = "90"
  tenant_id                  = "de810bec-18a3-479a-8c6f-185945c981d3"
}
