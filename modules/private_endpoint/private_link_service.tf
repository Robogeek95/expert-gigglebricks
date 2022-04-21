resource "azurerm_private_link_service" "databricks-privatelink" {
  auto_approval_subscription_ids              = ["00000000-0000-0000-0000-000000000000"]
  enable_proxy_protocol                       = "false"
  load_balancer_frontend_ip_configuration_ids = var.load_balancer_frontend_ip_configuration_ids
  location                                    = var.location
  name                                        = "databricks-privatelink"

  nat_ip_configuration {
    name                       = "primary"
    primary                    = "true"
    private_ip_address         = var.private_ip_address
    private_ip_address_version = "IPv4"
    subnet_id                  = var.vnetsub-Web01_id
  }

  nat_ip_configuration {
    name                       = "secondary"
    primary                    = "false"
    private_ip_address         = var.secondary_private_ip_address
    private_ip_address_version = "IPv4"
    subnet_id                  = var.vnetsub-Web01_id
  }

  resource_group_name         = var.rg-t-connectivity01_name
  visibility_subscription_ids = ["00000000-0000-0000-0000-000000000000"]
}
