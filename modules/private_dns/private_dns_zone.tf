resource "azurerm_private_dns_zone" "privatelink-002E-database-002E-windows-002E-net" {
  name                = "privatelink.database.windows.net"
  resource_group_name = var.rg-connectivity01_name

  soa_record {
    email        = "azureprivatedns-host.microsoft.com"
    expire_time  = "2419200"
    minimum_ttl  = "10"
    refresh_time = "3600"
    retry_time   = "300"
    ttl          = "3600"
  }
}
