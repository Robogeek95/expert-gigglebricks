resource "azurerm_lb_backend_address_pool" "addpool-eastus" {
  loadbalancer_id = azurerm_lb.databricks-LoadBalancer.id
  name            = "addpool-eastus"
}
