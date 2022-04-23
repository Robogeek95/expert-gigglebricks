resource "azurerm_private_dns_zone_virtual_network_link" "mx43u2pdtnzyw" {
  name                  = "mx43u2pdtnzyw"
  private_dns_zone_name = azurerm_private_dns_zone.privatelink-002E-database-002E-windows-002E-net.name
  registration_enabled  = "false"
  resource_group_name   = var.rg-connectivity01_name
  virtual_network_id    = var.vnet-t-eus-generalnetwork001_id
}
