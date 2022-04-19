output "lb_backend_address_pool_id" {
  value = "${azurerm_lb_backend_address_pool.addpool-eastus-dev-test.id}"
}

output "lb_id" {
  value = "${azurerm_lb.databricks-TestLoadBalancer.id}"
}
