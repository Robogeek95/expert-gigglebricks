resource "azurerm_network_security_group" "nsg-t-vnetsub-App01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-t-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-t-vnetsub-App01" {
  location            = var.location
  name                = "nsg-t-vnetsub-App01"
  resource_group_name = var.rg-t-connectivity01_name
}

resource "azurerm_network_security_group" "nsg-t-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-t-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-t-vnetsub-Data01" {
  location            = var.location
  name                = "nsg-t-vnetsub-Data01"
  resource_group_name = var.rg-t-connectivity01_name

  security_rule {
    access                     = "Allow"
    description                = "Required for Databricks control plane communication with worker nodes."
    destination_address_prefix = "VirtualNetwork"
    destination_port_range     = "5557"
    direction                  = "Inbound"
    name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-proxy"
    priority                   = "103"
    protocol                   = "Tcp"
    source_address_prefix      = "AzureDatabricks"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    description                = "Required for Databricks control plane management of worker nodes."
    destination_address_prefix = "VirtualNetwork"
    destination_port_range     = "22"
    direction                  = "Inbound"
    name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-ssh"
    priority                   = "102"
    protocol                   = "Tcp"
    source_address_prefix      = "AzureDatabricks"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    description                = "Required for worker communication with Azure Eventhub services."
    destination_address_prefix = "EventHub"
    destination_port_range     = "9093"
    direction                  = "Outbound"
    name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-eventhub"
    priority                   = "104"
    protocol                   = "Tcp"
    source_address_prefix      = "VirtualNetwork"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    description                = "Required for worker nodes communication within a cluster."
    destination_address_prefix = "VirtualNetwork"
    destination_port_range     = "*"
    direction                  = "Inbound"
    name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-worker-inbound"
    priority                   = "101"
    protocol                   = "*"
    source_address_prefix      = "VirtualNetwork"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    description                = "Required for worker nodes communication within a cluster."
    destination_address_prefix = "VirtualNetwork"
    destination_port_range     = "*"
    direction                  = "Outbound"
    name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-worker-outbound"
    priority                   = "103"
    protocol                   = "*"
    source_address_prefix      = "VirtualNetwork"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    description                = "Required for workers communication with Azure SQL services."
    destination_address_prefix = "Sql"
    destination_port_range     = "3306"
    direction                  = "Outbound"
    name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-sql"
    priority                   = "101"
    protocol                   = "Tcp"
    source_address_prefix      = "VirtualNetwork"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    description                = "Required for workers communication with Azure Storage services."
    destination_address_prefix = "Storage"
    destination_port_range     = "443"
    direction                  = "Outbound"
    name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-storage"
    priority                   = "102"
    protocol                   = "Tcp"
    source_address_prefix      = "VirtualNetwork"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    description                = "Required for workers communication with Databricks Webapp."
    destination_address_prefix = "AzureDatabricks"
    destination_port_range     = "443"
    direction                  = "Outbound"
    name                       = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-databricks-webapp"
    priority                   = "100"
    protocol                   = "Tcp"
    source_address_prefix      = "VirtualNetwork"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "22"
    direction                  = "Inbound"
    name                       = "SSH"
    priority                   = "110"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "443"
    direction                  = "Outbound"
    name                       = "HTTPSOuboundZPA"
    priority                   = "120"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }
}

resource "azurerm_network_security_group" "nsg-t-vnetsub-management01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-t-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-t-vnetsub-management01" {
  location            = var.location
  name                = "nsg-t-vnetsub-management01"
  resource_group_name = var.rg-t-connectivity01_name
}

resource "azurerm_network_security_group" "nsg-t-vnetsub-trustgateway01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-t-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-t-vnetsub-trustgateway01" {
  location            = var.location
  name                = "nsg-t-vnetsub-trustgateway01"
  resource_group_name = var.rg-t-connectivity01_name
}

resource "azurerm_network_security_group" "nsg-t-vnetsub-untrust01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-t-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-t-vnetsub-untrust01" {
  location            = var.location
  name                = "nsg-t-vnetsub-untrust01"
  resource_group_name = var.rg-t-connectivity01_name
}

resource "azurerm_network_security_group" "vm-t-vmtest01-nsg_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-t-vmtest01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-vm-t-vmtest01-nsg" {
  location            = var.location
  name                = "vm-t-vmtest01-nsg"
  resource_group_name = var.rg-t-vmtest01_name

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "3389"
    direction                  = "Inbound"
    name                       = "3389"
    priority                   = "310"
    protocol                   = "*"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }

  security_rule {
    access                     = "Allow"
    destination_address_prefix = "*"
    destination_port_range     = "3389"
    direction                  = "Inbound"
    name                       = "RDP"
    priority                   = "300"
    protocol                   = "Tcp"
    source_address_prefix      = "*"
    source_port_range          = "*"
  }
}
