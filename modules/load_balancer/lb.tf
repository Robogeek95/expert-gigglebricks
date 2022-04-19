resource "azurerm_lb" "databricks-TestLoadBalancer" {
  frontend_ip_configuration {
    name                          = "PublicIPAddress"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.pubIp-eastus-dev-test_id
  }

  location            = var.location
  name                = "databricks-TestLoadBalancer"
  resource_group_name = var.rg-t-connectivity01_name
  sku                 = "Standard"
  sku_tier            = "Regional"
}
