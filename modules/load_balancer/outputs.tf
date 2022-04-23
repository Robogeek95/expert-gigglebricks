output "lb_backend_address_pool_id" {
  value = azurerm_lb_backend_address_pool.addpool-eastus.id
}

output "lb_id" {
  value = azurerm_lb.databricks-LoadBalancer.id
}

output "lb_frontend_ip_configuration_id" {
  value = azurerm_lb.databricks-LoadBalancer.frontend_ip_configuration[0].id
}
