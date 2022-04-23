resource "azurerm_lb" "databricks-LoadBalancer" {
  frontend_ip_configuration {
    name                          = "PublicIPAddress"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.pubIp-eastus_id
  }

  location            = var.location
  name                = "databricks-LoadBalancer"
  resource_group_name = var.rg-connectivity01_name
  sku                 = "Standard"
  sku_tier            = "Regional"
}
