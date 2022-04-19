resource "azurerm_lb_backend_address_pool" "addpool-eastus-dev-test" {
  loadbalancer_id = azurerm_lb.databricks-TestLoadBalancer.id
  name            = "addpool-eastus-dev-test"
}
