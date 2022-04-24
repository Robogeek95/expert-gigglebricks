resource "azurerm_managed_disk" "d27500a7011f34e7e95ba5ff557a00690-0-scratchVolume" {
  create_option                 = "Empty"
  disk_size_gb                  = "128"
  location                       = var.location
  name                          = "27500a7011f34e7e95ba5ff557a00690-0-scratchVolume"
  on_demand_bursting_enabled    = "false"
  public_network_access_enabled = "true"
  resource_group_name           = var.rg-databricks-signature_name
  storage_account_type          = "Premium_LRS"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "27500a7011f34e7e95ba5ff557a00690"
    management_service       = "instance_manager_service"
  }

  tier                   = "P10"
  trusted_launch_enabled = "false"
}

resource "azurerm_managed_disk" "d27500a7011f34e7e95ba5ff557a00690-containerRootVolume" {
  create_option                 = "Empty"
  disk_size_gb                  = "256"
  location                       = var.location
  name                          = "27500a7011f34e7e95ba5ff557a00690-containerRootVolume"
  on_demand_bursting_enabled    = "false"
  public_network_access_enabled = "true"
  resource_group_name           =  var.rg-databricks-signature_name
  storage_account_type          = "Premium_LRS"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "27500a7011f34e7e95ba5ff557a00690"
    management_service       = "instance_manager_service"
  }

  tier                   = "P15"
  trusted_launch_enabled = "false"
}

resource "azurerm_managed_disk" "d27500a7011f34e7e95ba5ff557a00690-osDisk" {
  create_option                 = "FromImage"
  disk_size_gb                  = "30"
  hyper_v_generation            = "V1"
  image_reference_id            = "/Subscriptions/a189363f-28b0-4a18-a7bb-03f1593e50cf/Providers/Microsoft.Compute/Locations/eastus/Publishers/azuredatabricks/ArtifactTypes/VMImage/Offers/databricks/Skus/databricksworker/Versions/3.69.0"
  location                       = var.location
  name                          = "27500a7011f34e7e95ba5ff557a00690-osDisk"
  on_demand_bursting_enabled    = "false"
  os_type                       = "Linux"
  public_network_access_enabled = "true"
  resource_group_name           =  var.rg-databricks-signature_name
  storage_account_type          = "Premium_LRS"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "27500a7011f34e7e95ba5ff557a00690"
    management_service       = "instance_manager_service"
  }

  tier                   = "P4"
  trusted_launch_enabled = "false"
}

resource "azurerm_managed_disk" "b15b5f4532974f4aa626cf82bdf0bc6d-0-scratchVolume" {
  create_option                 = "Empty"
  disk_size_gb                  = "128"
  location                       = var.location
  name                          = "b15b5f4532974f4aa626cf82bdf0bc6d-0-scratchVolume"
  on_demand_bursting_enabled    = "false"
  public_network_access_enabled = "true"
  resource_group_name           =  var.rg-databricks-signature_name
  storage_account_type          = "Premium_LRS"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "b15b5f4532974f4aa626cf82bdf0bc6d"
    management_service       = "instance_manager_service"
  }

  tier                   = "P10"
  trusted_launch_enabled = "false"
}

resource "azurerm_managed_disk" "b15b5f4532974f4aa626cf82bdf0bc6d-containerRootVolume" {
  create_option                 = "Empty"
  disk_size_gb                  = "256"
  location                       = var.location
  name                          = "b15b5f4532974f4aa626cf82bdf0bc6d-containerRootVolume"
  on_demand_bursting_enabled    = "false"
  public_network_access_enabled = "true"
  resource_group_name           =  var.rg-databricks-signature_name
  storage_account_type          = "Premium_LRS"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "b15b5f4532974f4aa626cf82bdf0bc6d"
    management_service       = "instance_manager_service"
  }

  tier                   = "P15"
  trusted_launch_enabled = "false"
}

resource "azurerm_managed_disk" "b15b5f4532974f4aa626cf82bdf0bc6d-osDisk" {
  create_option                 = "FromImage"
  disk_size_gb                  = "30"
  hyper_v_generation            = "V1"
  image_reference_id            = "/Subscriptions/05b29857-413e-4db4-b399-96f5339c9c8f/Providers/Microsoft.Compute/Locations/eastus/Publishers/AzureDatabricks/ArtifactTypes/VMImage/Offers/Databricks/Skus/DatabricksWorker/Versions/3.69.0"
  location                       = var.location
  name                          = "b15b5f4532974f4aa626cf82bdf0bc6d-osDisk"
  on_demand_bursting_enabled    = "false"
  os_type                       = "Linux"
  public_network_access_enabled = "true"
  resource_group_name           =  var.rg-databricks-signature_name
  storage_account_type          = "Premium_LRS"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "b15b5f4532974f4aa626cf82bdf0bc6d"
    management_service       = "instance_manager_service"
  }

  tier                   = "P4"
  trusted_launch_enabled = "false"
}

resource "azurerm_managed_disk" "f936d79f09a5437f9d2845844c0abf75-0-scratchVolume" {
  create_option                 = "Empty"
  disk_size_gb                  = "128"
  location                       = var.location
  name                          = "f936d79f09a5437f9d2845844c0abf75-0-scratchVolume"
  on_demand_bursting_enabled    = "false"
  public_network_access_enabled = "true"
  resource_group_name           =  var.rg-databricks-signature_name
  storage_account_type          = "Premium_LRS"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "f936d79f09a5437f9d2845844c0abf75"
    management_service       = "instance_manager_service"
  }

  tier                   = "P10"
  trusted_launch_enabled = "false"
}

resource "azurerm_managed_disk" "f936d79f09a5437f9d2845844c0abf75-containerRootVolume" {
  create_option                 = "Empty"
  disk_size_gb                  = "256"
  location                       = var.location
  name                          = "f936d79f09a5437f9d2845844c0abf75-containerRootVolume"
  on_demand_bursting_enabled    = "false"
  public_network_access_enabled = "true"
  resource_group_name           =  var.rg-databricks-signature_name
  storage_account_type          = "Premium_LRS"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "f936d79f09a5437f9d2845844c0abf75"
    management_service       = "instance_manager_service"
  }

  tier                   = "P15"
  trusted_launch_enabled = "false"
}

resource "azurerm_managed_disk" "f936d79f09a5437f9d2845844c0abf75-osDisk" {
  create_option                 = "FromImage"
  disk_size_gb                  = "30"
  name                          = "f936d79f09a5437f9d2845844c0abf75-osDiskVolume"
  hyper_v_generation            = "V1"
  image_reference_id            = "/Subscriptions/05b29857-413e-4db4-b399-96f5339c9c8f/Providers/Microsoft.Compute/Locations/eastus/Publishers/AzureDatabricks/ArtifactTypes/VMImage/Offers/Databricks/Skus/DatabricksWorker/Versions/3.69.0"
  location                       = var.location
  on_demand_bursting_enabled    = "false"
  os_type                       = "Linux"
  public_network_access_enabled = "true"
  resource_group_name           =  var.rg-databricks-signature_name
  storage_account_type          = "Premium_LRS"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "f936d79f09a5437f9d2845844c0abf75"
    management_service       = "instance_manager_service"
  }

  tier                   = "P4"
  trusted_launch_enabled = "false"
}

resource "azurerm_managed_disk" "r-vm-zpa-connector-001_OsDisk_1_aaacd96622e4429d9b2f83d7f53314af" {
  create_option                 = "FromImage"
  disk_size_gb                  = "16"
  hyper_v_generation            = "V1"
  image_reference_id            = "/Subscriptions/05b29857-413e-4db4-b399-96f5339c9c8f/Providers/Microsoft.Compute/Locations/eastus/Publishers/zscaler/ArtifactTypes/VMImage/Offers/zscaler-private-access/Skus/zpa-con-azure/Versions/22.73.4"
  location                       = var.location
  name                          = "r-vm-zpa-connector-001_OsDisk_1_aaacd96622e4429d9b2f83d7f53314af"
  on_demand_bursting_enabled    = "false"
  os_type                       = "Linux"
  public_network_access_enabled = "true"
  resource_group_name           = var.rg-zscaler-zpa-connector_name
  storage_account_type          = "Premium_LRS"
  tier                          = "P3"
  trusted_launch_enabled        = "false"
  zone                          = "1"
}

resource "azurerm_managed_disk" "vm-t-vm01_OsDisk_1_ae3eaf8d944c4f25af1ff0f870ff325f" {
  create_option                 = "FromImage"
  disk_size_gb                  = "127"
  hyper_v_generation            = "V2"
  image_reference_id            = "/Subscriptions/05b29857-413e-4db4-b399-96f5339c9c8f/Providers/Microsoft.Compute/Locations/eastus/Publishers/MicrosoftWindowsServer/ArtifactTypes/VMImage/Offers/WindowsServer/Skus/2022-datacenter-azure-edition/Versions/20348.587.220303"
  location                       = var.location
  name                          = "vm-t-vm01_OsDisk_1_ae3eaf8d944c4f25af1ff0f870ff325f"
  on_demand_bursting_enabled    = "false"
  os_type                       = "Windows"
  public_network_access_enabled = "true"
  resource_group_name           = var.rg-vmcomp01_name
  storage_account_type          = "Premium_LRS"
  tier                          = "P10"
  trusted_launch_enabled        = "false"
}
