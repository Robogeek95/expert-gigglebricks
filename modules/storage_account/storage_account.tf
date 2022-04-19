resource "azurerm_storage_account" "databrickssignaturesa" {
  access_tier                     = "Hot"
  account_kind                    = "StorageV2"
  account_replication_type        = "LRS"
  account_tier                    = "Standard"
  allow_nested_items_to_be_public = "false"

  blob_properties {
    change_feed_enabled      = "false"
    last_access_time_enabled = "false"
    versioning_enabled       = "false"
  }

  enable_https_traffic_only         = "true"
  infrastructure_encryption_enabled = "false"
  is_hns_enabled                    = "false"
  location                          = var.location
  min_tls_version                   = "TLS1_0"
  name                              = "databrickssignaturesa"

  network_rules {
    bypass         = ["AzureServices"]
    default_action = "Allow"
  }

  nfsv3_enabled             = "false"
  queue_encryption_key_type = "Service"

  queue_properties {
    hour_metrics {
      enabled               = "true"
      include_apis          = "true"
      retention_policy_days = "7"
      version               = "1.0"
    }

    logging {
      delete                = "false"
      read                  = "false"
      retention_policy_days = "0"
      version               = "1.0"
      write                 = "false"
    }

    minute_metrics {
      enabled               = "false"
      include_apis          = "false"
      retention_policy_days = "0"
      version               = "1.0"
    }
  }

  resource_group_name = var.rg-databricks-signature-azuresql_name

  share_properties {
    retention_policy {
      days = "7"
    }
  }

  shared_access_key_enabled = "true"
  table_encryption_key_type = "Service"
}

resource "azurerm_storage_account" "dbstoragelguebfbjeynck" {}

resource "azurerm_storage_account" "rgtvmtest01diag" {
  account_kind                    = "Storage"
  account_replication_type        = "LRS"
  account_tier                    = "Standard"
  allow_nested_items_to_be_public = "true"

  blob_properties {
    change_feed_enabled      = "false"
    last_access_time_enabled = "false"
    versioning_enabled       = "false"
  }

  enable_https_traffic_only         = "true"
  infrastructure_encryption_enabled = "false"
  is_hns_enabled                    = "false"
  location                          = var.location
  min_tls_version                   = "TLS1_2"
  name                              = "rgtvmtest01diag"

  network_rules {
    bypass         = ["AzureServices"]
    default_action = "Allow"
  }

  nfsv3_enabled             = "false"
  queue_encryption_key_type = "Service"

  queue_properties {
    hour_metrics {
      enabled               = "true"
      include_apis          = "true"
      retention_policy_days = "7"
      version               = "1.0"
    }

    logging {
      delete                = "false"
      read                  = "false"
      retention_policy_days = "0"
      version               = "1.0"
      write                 = "false"
    }

    minute_metrics {
      enabled               = "false"
      include_apis          = "false"
      retention_policy_days = "0"
      version               = "1.0"
    }
  }

  resource_group_name = var.rg-t-vmtest01_name

  share_properties {
    retention_policy {
      days = "7"
    }
  }

  shared_access_key_enabled = "true"
  table_encryption_key_type = "Service"
}
