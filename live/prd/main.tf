locals {
  naming = {
    location = {
      "eastus" = "estus"
    }
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "vn" {
  name     = var.vn_resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "databricks" {
  name     = var.databricks_resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "azure_sql" {
  name     = var.azure_sql_resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "NetworkWatcherRG" {
  name     = var.NetworkWatcherRG_name
  location = var.location
}

resource "azurerm_resource_group" "vmrg-t-vmtest01" {
  name     = var.vmrg-t-vmtest01_name
  location = var.location
}

resource "azurerm_resource_group" "rg-zscaler-zpa-connector" {
  name     = var.rg-zscaler-zpa-connector_name
  location = var.location
}

locals {
  vn_resource_group_id       = azurerm_resource_group.vn.id
  vn_resource_group_location = azurerm_resource_group.vn.location

  databricks_resource_group_id       = azurerm_resource_group.databricks.id
  databricks_resource_group_location = azurerm_resource_group.databricks.id

  azure_sql_resource_group_id       = azurerm_resource_group.azure_sql.id
  azure_sql_resource_group_location = azurerm_resource_group.azure_sql.location
}

resource "azurerm_key_vault" "this" {
  name = format("kv-%s-%s-%s",
  local.naming.location[var.location], var.environment, var.project)


  resource_group_name = var.azure_sql_resource_group_name
  location            = azurerm_resource_group.azure_sql.location
  tenant_id           = data.azurerm_client_config.current.tenant_id

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Get",
      "Set",
      "Delete",
      "Recover",
      "Purge"
    ]
  }
}

module "private_dns" {
  source = "../../modules/private_dns"

  location                        = var.location
  rg-t-connectivity01_name        = var.vn_resource_group_name
  vnet-t-eus-generalnetwork001_id = azurerm_virtual_network.this.id
}

module "private_endpoint" {
  source = "../../modules/private_endpoint"

  location                                    = var.location
  rg-t-connectivity01_name                    = var.vn_resource_group_name
  databricks-signature-azuresql_name          = var.azure_sql_resource_group_name
  private_dns_zone_ids                        = [module.private_dns.azurerm_private_dns_zone_privatelink-002E-database-002E-windows-002E-net_id]
  load_balancer_frontend_ip_configuration_ids = [azurerm_lb.this.frontend_ip_configuration[0].id]
  vnetsub-Data01_id                           = azurerm_subnet.vnetsub-Data01.id
  vnetsub-Web01_id                            = azurerm_subnet.public.id
  private_connection_resource_id              = azurerm_sql_server.this.id
}

module "public_ip" {
  source = "../../modules/public_ip"

  location                      = var.location
  rg-databricks-signature_name  = var.databricks_resource_group_name
  rg-t-connectivity01_name      = var.vn_resource_group_name
  rg-zscaler-zpa-connector_name = azurerm_resource_group.rg-zscaler-zpa-connector.name
}

module "network_interface" {
  source = "../../modules/network_interface"

  location                                  = var.location
  rg-databricks-signature_name              = var.databricks_resource_group_name
  web_private_subnet_id                     = azurerm_subnet.private.id
  web_subnet_id                             = azurerm_subnet.public.id
  pubIp-b15b5f4532974f4aa626cf82bdf0bc6d_id = module.public_ip.azurerm_public_ip_b15b5f4532974f4aa626cf82bdf0bc6d-publicIP_id
  pubIp-27500a7011f34e7e95ba5ff557a00690_id = module.public_ip.azurerm_public_ip_27500a7011f34e7e95ba5ff557a00690-publicIP_id
  pubIp-f936d79f09a5437f9d2845844c0abf75_id = module.public_ip.azurerm_public_ip_f936d79f09a5437f9d2845844c0abf75-publicIP_id
  rg-t-connectivity01_name                  = var.vn_resource_group_name
  data_subnet_id                            = azurerm_subnet.vnetsub-Data01.id
  rg-databricks-signature-azuresql_name     = var.azure_sql_resource_group_name
  r-vm-zpa-connector-001-ip_id              = module.public_ip.azurerm_public_ip_r-vm-zpa-connector-001-ip_id
  rg-zscaler-zpa-connector_name             = azurerm_resource_group.rg-zscaler-zpa-connector.name
  rg-t-vmtest01_name                        = azurerm_resource_group.vmrg-t-vmtest01.name
}

module "network_watcher" {
  source = "../../modules/network_watcher"

  location              = var.location
  NetworkWatcherRG_name = azurerm_resource_group.NetworkWatcherRG.name
}

module "disk" {
  source = "../../modules/disk"

  location                      = var.location
  rg-databricks-signature_name  = var.databricks_resource_group_name
  rg-t-vmtest01_name            = azurerm_resource_group.vmrg-t-vmtest01.name
  rg-zscaler-zpa-connector_name = azurerm_resource_group.rg-zscaler-zpa-connector.name
}

/* 
module "virtual_machine" {
  source = "../../modules/virtual_machine"

  location                                           = var.location
  nic_vm-t-vmtest01589_id                            = module.network_interface.azurerm_network_interface_vm-t-vmtest01589_id
  rg-databricks-signature_name                       = var.databricks_resource_group_name
  r-vm-zpa-connecto210_z1_id                         = module.network_interface.azurerm_network_interface_r-vm-zpa-connecto210_z1_id
  nic_f936d79f09a5437f9d2845844c0abf75-privateNIC_id = module.network_interface.azurerm_network_interface_f936d79f09a5437f9d2845844c0abf75-privateNIC_id
  nic_f936d79f09a5437f9d2845844c0abf75-publicNIC_id  = module.network_interface.azurerm_network_interface_f936d79f09a5437f9d2845844c0abf75-publicNIC_id
  nic_27500a7011f34e7e95ba5ff557a00690-privateNIC_id = module.network_interface.azurerm_network_interface_27500a7011f34e7e95ba5ff557a00690-privateNIC_id
  nic_27500a7011f34e7e95ba5ff557a00690-publicNIC_id  = module.network_interface.azurerm_network_interface_27500a7011f34e7e95ba5ff557a00690-publicNIC_id
  nic_b15b5f4532974f4aa626cf82bdf0bc6d-privateNIC_id = module.network_interface.azurerm_network_interface_b15b5f4532974f4aa626cf82bdf0bc6d-privateNIC_id
  nic_b15b5f4532974f4aa626cf82bdf0bc6d-publicNIC_id  = module.network_interface.azurerm_network_interface_b15b5f4532974f4aa626cf82bdf0bc6d-publicNIC_id
} */