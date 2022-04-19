resource "azurerm_public_ip" "pubIp-27500a7011f34e7e95ba5ff557a00690" {
  allocation_method       = "Dynamic"
  idle_timeout_in_minutes = "4"
  ip_version              = "IPv4"
  location                = var.location
  name                    = "27500a7011f34e7e95ba5ff557a00690-publicIP"
  resource_group_name     = var.rg-databricks-signature_name
  sku                     = "Basic"
  sku_tier                = "Regional"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "27500a7011f34e7e95ba5ff557a00690"
    management_service       = "instance_manager_service"
  }
}

resource "azurerm_public_ip" "pubIp-b15b5f4532974f4aa626cf82bdf0bc6d" {
  allocation_method       = "Dynamic"
  idle_timeout_in_minutes = "4"
  ip_version              = "IPv4"
  location                = var.location
  name                    = "b15b5f4532974f4aa626cf82bdf0bc6d-publicIP"
  resource_group_name     = var.rg-databricks-signature_name
  sku                     = "Basic"
  sku_tier                = "Regional"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "b15b5f4532974f4aa626cf82bdf0bc6d"
    management_service       = "instance_manager_service"
  }
}

resource "azurerm_public_ip" "pubIp-f936d79f09a5437f9d2845844c0abf75" {
  allocation_method       = "Dynamic"
  idle_timeout_in_minutes = "4"
  ip_version              = "IPv4"
  location                = var.location
  name                    = "f936d79f09a5437f9d2845844c0abf75-publicIP"
  resource_group_name     = var.rg-databricks-signature_name
  sku                     = "Basic"
  sku_tier                = "Regional"

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "f936d79f09a5437f9d2845844c0abf75"
    management_service       = "instance_manager_service"
  }
}

resource "azurerm_public_ip" "pubIp-t-azforti01" {
  allocation_method       = "Static"
  idle_timeout_in_minutes = "4"
  ip_version              = "IPv4"
  location                = var.location
  name                    = "pip-t-azforti01"
  resource_group_name     = var.rg-t-connectivity01_name
  sku                     = "Standard"
  sku_tier                = "Regional"
  zones                   = ["1", "2", "3"]
}

resource "azurerm_public_ip" "pubIp-t-azforti02" {
  allocation_method       = "Static"
  idle_timeout_in_minutes = "4"
  ip_version              = "IPv4"
  location                = var.location
  name                    = "pip-t-azforti02"
  resource_group_name     = var.rg-t-connectivity01_name
  sku                     = "Standard"
  sku_tier                = "Regional"
  zones                   = ["1", "2", "3"]
}

resource "azurerm_public_ip" "pubIp-eastus-dev-test" {
  allocation_method       = "Static"
  idle_timeout_in_minutes = "4"
  ip_version              = "IPv4"
  location                = var.location
  name                    = "pubIp-eastus-dev-test"
  resource_group_name     = var.rg-t-connectivity01_name
  sku                     = "Standard"
  sku_tier                = "Regional"
  zones                   = ["1", "2", "3"]
}

resource "azurerm_public_ip" "r-vm-zpa-connector-001-ip" {
  allocation_method       = "Static"
  idle_timeout_in_minutes = "4"
  ip_version              = "IPv4"
  location                = var.location
  name                    = "r-vm-zpa-connector-001-ip"
  resource_group_name     = var.rg-zscaler-zpa-connector_name
  sku                     = "Standard"
  sku_tier                = "Regional"
  zones                   = ["1"]
}
                                                 