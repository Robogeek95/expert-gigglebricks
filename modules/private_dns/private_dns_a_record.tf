resource "azurerm_private_dns_a_record" "databricks" {
  name                = "databricks"
  records             = ["10.96.5.70", "10.96.5.72"]
  resource_group_name = var.rg-t-connectivity01_name
  ttl                 = "3600"
  zone_name = azurerm_private_dns_zone.privatelink-002E-database-002E-windows-002E-net.name
}

resource "azurerm_private_dns_a_record" "signature-msql-databricks" {
  name                = "signature-msql-databricks"
  records             = ["10.96.3.5"]
  resource_group_name = var.rg-t-connectivity01_name

  tags = {
    creator = "created by private endpoint pl-t-signature-msql-databrinks with resource guid 9ccf978f-92bc-4379-97f5-03273f01941b"
  }

  ttl       = "10"
  zone_name = azurerm_private_dns_zone.privatelink-002E-database-002E-windows-002E-net.name
}
