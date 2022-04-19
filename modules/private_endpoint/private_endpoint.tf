resource "azurerm_private_endpoint" "pl-t-signature-msql-databrinks" {
  location = var.location
  name     = "pl-t-signature-msql-databrinks"

  private_dns_zone_group {
    name                 = "default"
    private_dns_zone_ids = var.private_dns_zone_ids
  }

  private_service_connection {
    is_manual_connection           = "false"
    name                           = "pl-t-signature-msql-databrinks"
    private_connection_resource_id = var.private_connection_resource_id
    subresource_names              = ["sqlServer"]
  }

  resource_group_name = var.databricks-signature-azuresql_name
  subnet_id           = var.vnetsub-Data01_id                                                                                                                                                                    
}
