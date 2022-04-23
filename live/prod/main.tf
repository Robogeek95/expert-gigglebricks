
module "resource_group" {
  source = "../../modules/resource_group"
}

module "virtual_network" {
  source = "../../modules/virtual_network"

  location               = var.location
  rg-connectivity01_name = module.resource_group.azurerm_resource_group_rg-connectivity01_name
  address_space          = var.virtual_network_address_prefixes
}

module "network_security_group" {
  source = "../../modules/network_security_group"

  location               = var.location
  rg-vmcomp01_name       = module.resource_group.azurerm_resource_group_rg-vmcomp01_name
  rg-connectivity01_name = module.resource_group.azurerm_resource_group_rg-connectivity01_name
}

module "public_ip" {
  source = "../../modules/public_ip"

  location                      = var.location
  rg-databricks-signature_name  = module.resource_group.azurerm_resource_group_databricks-signature_name
  rg-connectivity01_name        = module.resource_group.azurerm_resource_group_rg-connectivity01_name
  rg-zscaler-zpa-connector_name = module.resource_group.azurerm_resource_group_rg-zscaler-zpa-connector_name
}

module "subnet" {
  source = "../../modules/subnet"

  nsg-vnetsub-Data01_id           = module.network_security_group.azurerm_network_security_group_nsg-vnetsub-Data01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-Data01_id
  nsg-vnetsub-management01_id     = module.network_security_group.azurerm_network_security_group_nsg-vnetsub-management01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-management01_id
  nsg-t-vnetsub-trustgateway01_id = module.network_security_group.azurerm_network_security_group_nsg-t-vnetsub-trustgateway01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-t-vnetsub-trustgateway01_id
  nsg-vnetsub-untrust01_id        = module.network_security_group.azurerm_network_security_group_nsg-vnetsub-untrust01_-002F-subscriptions-002F-05b29857-413e-4db4-b399-96f5339c9c8f-002F-resourceGroups-002F-rg-connectivity01-002F-providers-002F-Microsoft-002E-Network-002F-networkSecurityGroups-002F-nsg-vnetsub-untrust01_id
  ng-t-eus-pip-t-azforti01        = module.public_ip.azurerm_public_ip_pip-t-azforti01_id
  vnet-eus-generalnetwork001_name = module.virtual_network.azurerm_virtual_network_vnet-eus-generalnetwork001_name
  rg-connectivity01_name          = module.resource_group.azurerm_resource_group_rg-connectivity01_name

  vnetsub-Web01_address_prefixes          = var.public_subnet_address_prefixes
  vnetsub-Web01-priv_address_prefixes     = var.private_subnet_address_prefixes
  vnetsub-management01_address_prefixes   = var.vnetsub-management01_address_prefixes
  vnetsub-trustgateway01_address_prefixes = var.vnetsub-trustgateway01_address_prefixes
  vnetsub-untrust01_address_prefixes      = var.vnetsub-untrust01_address_prefixes
  GatewaySubnet_address_prefixes          = var.GatewaySubnet_address_prefixes
  vnetsub-Data01_address_prefixes         = var.vnetsub-Data01_address_prefixes
}

module "load_balancer" {
  source = "../../modules/load_balancer"

  rg-connectivity01_name = module.resource_group.azurerm_resource_group_rg-connectivity01_name
  location               = var.location
  pubIp-eastus_id        = module.public_ip.azurerm_public_ip_pubIp-eastus_id
}

module "database" {
  source = "../../modules/database"

  location                              = var.location
  rg-databricks-signature-azuresql_name = module.resource_group.azurerm_resource_group_databricks-signature-azuresql_name
}

module "private_endpoint" {
  source = "../../modules/private_endpoint"

  location                                    = var.location
  vnetsub-Data01_id                           = module.subnet.azurerm_subnet_vnetsub-Data01_id
  private_dns_zone_ids                        = [module.private_dns.azurerm_private_dns_zone_privatelink-002E-database-002E-windows-002E-net_id]
  load_balancer_frontend_ip_configuration_ids = [module.load_balancer.lb_frontend_ip_configuration_id]
  vnetsub-Web01_id                            = module.subnet.azurerm_subnet_vnetsub-Web01_id
  private_connection_resource_id              = module.database.azurerm_sql_server_signature-msql-databricks_id
  rg-connectivity01_name                      = module.resource_group.azurerm_resource_group_rg-connectivity01_name
  databricks-signature-azuresql_name          = module.resource_group.azurerm_resource_group_databricks-signature-azuresql_name
  private_ip_address                          = var.private_link_primary_private_ip_address
  secondary_private_ip_address                = var.private_link_secondary_private_ip_address
}

module "private_dns" {
  source = "../../modules/private_dns"

  location                        = var.location
  rg-connectivity01_name          = module.resource_group.azurerm_resource_group_rg-connectivity01_name
  vnet-t-eus-generalnetwork001_id = module.virtual_network.azurerm_virtual_network_vnet-eus-generalnetwork001_id
  zone_name                       = ""
  private_dns_zone_name           = ""
}

module "network_watcher" {
  source = "../../modules/network_watcher"

  location              = var.location
  NetworkWatcherRG_name = module.resource_group.azurerm_resource_group_NetworkWatcherRG_name
}

module "network_interface" {
  source = "../../modules/network_interface"

  location                                  = var.location
  rg-databricks-signature_name              = module.resource_group.azurerm_resource_group_databricks-signature_name
  web_private_subnet_id                     = module.subnet.azurerm_subnet_vnetsub-Web01-priv_id
  pubIp-b15b5f4532974f4aa626cf82bdf0bc6d_id = module.public_ip.azurerm_public_ip_b15b5f4532974f4aa626cf82bdf0bc6d-publicIP_id
  pubIp-27500a7011f34e7e95ba5ff557a00690_id = module.public_ip.azurerm_public_ip_27500a7011f34e7e95ba5ff557a00690-publicIP_id
  pubIp-f936d79f09a5437f9d2845844c0abf75_id = module.public_ip.azurerm_public_ip_f936d79f09a5437f9d2845844c0abf75-publicIP_id
  rg-connectivity01_name                    = module.resource_group.azurerm_resource_group_rg-connectivity01_name
  web_subnet_id                             = module.subnet.azurerm_subnet_vnetsub-Web01-priv_id
  data_subnet_id                            = module.subnet.azurerm_subnet_vnetsub-Data01_id
  rg-databricks-signature-azuresql_name     = module.resource_group.azurerm_resource_group_databricks-signature-azuresql_name
  r-vm-zpa-connector-001-ip_id              = module.public_ip.azurerm_public_ip_r-vm-zpa-connector-001-ip_id
  rg-zscaler-zpa-connector_name             = module.resource_group.azurerm_resource_group_rg-zscaler-zpa-connector_name
  rg-vmcomp01_name                          = module.resource_group.azurerm_resource_group_rg-vmcomp01_name
}

module "databricks" {
  source = "../../modules/databricks"

  rg-databricks-signature_name                         = module.resource_group.azurerm_resource_group_databricks-signature_name
  location                                             = var.location
  private_subnet_name                                  = module.subnet.azurerm_subnet_vnetsub-Web01-priv_name
  public_subnet_name                                   = module.subnet.azurerm_subnet_vnetsub-Web01_name
  storage_account_name                                 = module.database.azurerm_storage_account_dbsignaturesa_name
  vnet-t-eus-generalnetwork001                         = module.virtual_network.azurerm_virtual_network_vnet-eus-generalnetwork001_id
  public_subnet_network_security_group_association_id  = module.subnet.azurerm_subnet_network_security_group_association_vnetsub-Web01_network_security_group_association_id
  private_subnet_network_security_group_association_id = module.subnet.azurerm_subnet_network_security_group_association_vnetsub-Data01_network_security_group_association_id
}
