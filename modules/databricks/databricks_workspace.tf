resource "azurerm_databricks_workspace" "dbs-dev-test" {
  custom_parameters {
    nat_gateway_name         = "nat-gateway"
    no_public_ip             = "false"
    private_subnet_name      = "vnetsub-Web01-priv"
    public_ip_name           = "nat-gw-public-ip"
    public_subnet_name       = "vnetsub-Web01"
    storage_account_name     = "dbstoragelguebfbjeynck"
    storage_account_sku_name = "Standard_GRS"
    virtual_network_id       = "/subscriptions/05b29857-413e-4db4-b399-96f5339c9c8f/resourceGroups/rg-t-connectivity01/providers/Microsoft.Network/virtualNetworks/vnet-t-eus-generalnetwork001"
    vnet_address_prefix      = "10.139"
  }

  customer_managed_key_enabled      = "false"
  infrastructure_encryption_enabled = "false"
  location                          = var.location
  managed_resource_group_name       = var.rg-databricks-signature_name
  name                              = "dbs-dev-test"
  public_network_access_enabled     = "true"
  resource_group_name               = var.rg-databricks-signature_name
  sku                               = "premium"
}
