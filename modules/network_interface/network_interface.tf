resource "azurerm_network_interface" "privateNIC-27500a7011f34e7e95ba5ff557a00690" {
  enable_accelerated_networking = "true"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "ipConfig"
    primary                       = "true"
    private_ip_address            = "10.96.2.6"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    subnet_id                     = var.web_private_subnet_id
  }

  location            = var.location
  name                = "27500a7011f34e7e95ba5ff557a00690-privateNIC"
  resource_group_name = var.rg-databricks-signature_name

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

resource "azurerm_network_interface" "publicNIC-27500a7011f34e7e95ba5ff557a00690" {
  enable_accelerated_networking = "true"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "ipConfig"
    primary                       = "true"
    private_ip_address            = "10.96.5.5"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    public_ip_address_id          = var.pubIp-27500a7011f34e7e95ba5ff557a00690_id
    subnet_id                     = var.web_subnet_id
  }

  location            = var.location
  name                = "27500a7011f34e7e95ba5ff557a00690-publicNIC"
  resource_group_name = var.rg-databricks-signature_name

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

resource "azurerm_network_interface" "privateNIC-b15b5f4532974f4aa626cf82bdf0bc6d" {
  enable_accelerated_networking = "true"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "ipConfig"
    primary                       = "true"
    private_ip_address            = "10.96.2.4"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    subnet_id                     = var.web_private_subnet_id
  }

  location            = var.location
  name                = "b15b5f4532974f4aa626cf82bdf0bc6d-privateNIC"
  resource_group_name = var.rg-databricks-signature_name

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

resource "azurerm_network_interface" "publicNIC-b15b5f4532974f4aa626cf82bdf0bc6d" {
  enable_accelerated_networking = "true"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "ipConfig"
    primary                       = "true"
    private_ip_address            = "10.96.5.4"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    public_ip_address_id          = var.pubIp-b15b5f4532974f4aa626cf82bdf0bc6d_id
    subnet_id                     = var.web_subnet_id
  }

  location            = var.location
  name                = "b15b5f4532974f4aa626cf82bdf0bc6d-publicNIC"
  resource_group_name = var.rg-databricks-signature_name

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

resource "azurerm_network_interface" "databricks-privatelink-002E-nic-002E-53f22e78-3456-48be-9b75-51d49a7d8360" {
  enable_accelerated_networking = "false"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "primary"
    primary                       = "true"
    private_ip_address            = "10.96.5.70"
    private_ip_address_allocation = "Static"
    private_ip_address_version    = "IPv4"
    subnet_id                     = var.web_subnet_id
  }

  ip_configuration {
    name                          = "secondary"
    primary                       = "false"
    private_ip_address            = "10.96.5.72"
    private_ip_address_allocation = "Static"
    private_ip_address_version    = "IPv4"
    subnet_id                     = var.web_subnet_id
  }

  location            = var.location
  name                = "databricks-privatelink.nic.53f22e78-3456-48be-9b75-51d49a7d8360"
  resource_group_name = var.rg-connectivity01_name
}

resource "azurerm_network_interface" "privateNIC-f936d79f09a5437f9d2845844c0abf75" {
  enable_accelerated_networking = "true"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "ipConfig"
    primary                       = "true"
    private_ip_address            = "10.96.2.5"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    subnet_id                     = var.web_private_subnet_id
  }

  location            = var.location
  name                = "f936d79f09a5437f9d2845844c0abf75-privateNIC"
  resource_group_name = var.rg-databricks-signature_name

  tags = {
    ClusterName              = "ADBCluster"
    Vendor                   = "Databricks"
    databricks-instance-name = "f936d79f09a5437f9d2845844c0abf75"
    management_service       = "instance_manager_service"
  }
}

resource "azurerm_network_interface" "publicNIC-f936d79f09a5437f9d2845844c0abf75" {
  enable_accelerated_networking = "true"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "ipConfig"
    primary                       = "true"
    private_ip_address            = "10.96.5.6"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    public_ip_address_id          = var.pubIp-f936d79f09a5437f9d2845844c0abf75_id
    subnet_id                     = var.web_subnet_id
  }

  location            = var.location
  name                = "f936d79f09a5437f9d2845844c0abf75-publicNIC"
  resource_group_name = var.rg-databricks-signature_name

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

resource "azurerm_network_interface" "pl-t-signature-msql-databrinks-002E-nic-002E-ac911581-a251-4bba-adac-b9f38642522d" {
  enable_accelerated_networking = "false"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "privateEndpointIpConfig.0f463f69-c209-4f2d-8bcb-10522aaca362"
    primary                       = "true"
    private_ip_address            = "10.96.3.5"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    subnet_id                     = var.data_subnet_id
  }

  location            = var.location
  name                = "pl-t-signature-msql-databrinks.nic.ac911581-a251-4bba-adac-b9f38642522d"
  resource_group_name = var.rg-databricks-signature-azuresql_name
}

resource "azurerm_network_interface" "r-vm-zpa-connecto210_z1" {
  enable_accelerated_networking = "true"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "ipconfig1"
    primary                       = "true"
    private_ip_address            = "10.96.3.6"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    public_ip_address_id          = var.r-vm-zpa-connector-001-ip_id
    subnet_id                     = var.data_subnet_id
  }

  location            = var.location
  name                = "r-vm-zpa-connecto210_z1"
  resource_group_name = var.rg-zscaler-zpa-connector_name
}

resource "azurerm_network_interface" "vm-t-vm01589" {
  enable_accelerated_networking = "true"
  enable_ip_forwarding          = "false"

  ip_configuration {
    name                          = "ipconfig1"
    primary                       = "true"
    private_ip_address            = "10.96.3.4"
    private_ip_address_allocation = "Dynamic"
    private_ip_address_version    = "IPv4"
    subnet_id                     = var.data_subnet_id
  }

  location            = var.location
  name                = "vm-t-vm01589"
  resource_group_name = var.rg-vmcomp01_name
}
