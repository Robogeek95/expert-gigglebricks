resource "azurerm_network_security_rule" "sr-3389_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-vmcomp01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-vm-vmtest01-nsg-002F-securityRules-002F-3389" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "3389"
  direction                   = "Inbound"
  name                        = "3389"
  network_security_group_name = "${azurerm_network_security_group.vm-vmtest01-nsg_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-vmcomp01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-vm-vmtest01-nsg.name}"
  priority                    = "310"
  protocol                    = "*"
  resource_group_name         = "${var.rg-vmcomp01_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "HTTPSOuboundZPA_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01-002F-securityRules-002F-HTTPSOuboundZPA" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "443"
  direction                   = "Outbound"
  name                        = "HTTPSOuboundZPA"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "120"
  protocol                    = "Tcp"
  resource_group_name         = var.rg-vmcomp01_name
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "Microsoft-002E-Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-proxy_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01-002F-securityRules-002F-Microsoft-002E-Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-proxy" {
  access                      = "Allow"
  description                 = "Required for Databricks control plane communication with worker nodes."
  destination_address_prefix  = "VirtualNetwork"
  destination_port_range      = "5557"
  direction                   = "Inbound"
  name                        = "Microsoft.Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-proxy"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "103"
  protocol                    = "Tcp"
  resource_group_name         = "${var.rg-connectivity01_name}"
  source_address_prefix       = "AzureDatabricks"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "Microsoft-002E-Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-ssh_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01-002F-securityRules-002F-Microsoft-002E-Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-ssh" {
  access                      = "Allow"
  description                 = "Required for Databricks control plane management of worker nodes."
  destination_address_prefix  = "VirtualNetwork"
  destination_port_range      = "22"
  direction                   = "Inbound"
  name                        = "Microsoft.Databricks-workspaces_UseOnly_databricks-control-plane-to-worker-ssh"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "102"
  protocol                    = "Tcp"
  resource_group_name         = "${var.rg-connectivity01_name}"
  source_address_prefix       = "AzureDatabricks"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-databricks-webapp_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01-002F-securityRules-002F-Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-databricks-webapp" {
  access                      = "Allow"
  description                 = "Required for workers communication with Databricks Webapp."
  destination_address_prefix  = "AzureDatabricks"
  destination_port_range      = "443"
  direction                   = "Outbound"
  name                        = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-databricks-webapp"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "100"
  protocol                    = "Tcp"
  resource_group_name         = "${var.rg-connectivity01_name}"
  source_address_prefix       = "VirtualNetwork"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-eventhub_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01-002F-securityRules-002F-Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-eventhub" {
  access                      = "Allow"
  description                 = "Required for worker communication with Azure Eventhub services."
  destination_address_prefix  = "EventHub"
  destination_port_range      = "9093"
  direction                   = "Outbound"
  name                        = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-eventhub"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "104"
  protocol                    = "Tcp"
  resource_group_name         = "${var.rg-connectivity01_name}"
  source_address_prefix       = "VirtualNetwork"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-sql_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01-002F-securityRules-002F-Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-sql" {
  access                      = "Allow"
  description                 = "Required for workers communication with Azure SQL services."
  destination_address_prefix  = "Sql"
  destination_port_range      = "3306"
  direction                   = "Outbound"
  name                        = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-sql"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "101"
  protocol                    = "Tcp"
  resource_group_name         = "${var.rg-connectivity01_name}"
  source_address_prefix       = "VirtualNetwork"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-storage_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01-002F-securityRules-002F-Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-storage" {
  access                      = "Allow"
  description                 = "Required for workers communication with Azure Storage services."
  destination_address_prefix  = "Storage"
  destination_port_range      = "443"
  direction                   = "Outbound"
  name                        = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-storage"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "102"
  protocol                    = "Tcp"
  resource_group_name         = "${var.rg-connectivity01_name}"
  source_address_prefix       = "VirtualNetwork"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-worker-inbound_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01-002F-securityRules-002F-Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-worker-inbound" {
  access                      = "Allow"
  description                 = "Required for worker nodes communication within a cluster."
  destination_address_prefix  = "VirtualNetwork"
  destination_port_range      = "*"
  direction                   = "Inbound"
  name                        = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-worker-inbound"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "101"
  protocol                    = "*"
  resource_group_name         = "${var.rg-connectivity01_name}"
  source_address_prefix       = "VirtualNetwork"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-worker-outbound_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01-002F-securityRules-002F-Microsoft-002E-Databricks-workspaces_UseOnly_databricks-worker-to-worker-outbound" {
  access                      = "Allow"
  description                 = "Required for worker nodes communication within a cluster."
  destination_address_prefix  = "VirtualNetwork"
  destination_port_range      = "*"
  direction                   = "Outbound"
  name                        = "Microsoft.Databricks-workspaces_UseOnly_databricks-worker-to-worker-outbound"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "103"
  protocol                    = "*"
  resource_group_name         = "${var.rg-connectivity01_name}"
  source_address_prefix       = "VirtualNetwork"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "RDP_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-vmcomp01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-vm-vmtest01-nsg-002F-securityRules-002F-RDP" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "3389"
  direction                   = "Inbound"
  name                        = "RDP"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "300"
  protocol                    = "Tcp"
  resource_group_name         = "${var.rg-connectivity01_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}

resource "azurerm_network_security_rule" "SSH_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01-002F-securityRules-002F-SSH" {
  access                      = "Allow"
  destination_address_prefix  = "*"
  destination_port_range      = "22"
  direction                   = "Inbound"
  name                        = "SSH"
  network_security_group_name = "${azurerm_network_security_group.nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01.name}"
  priority                    = "110"
  protocol                    = "Tcp"
  resource_group_name         = "${var.rg-connectivity01_name}"
  source_address_prefix       = "*"
  source_port_range           = "*"
}
