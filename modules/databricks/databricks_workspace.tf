resource "azurerm_databricks_workspace" "dbs-dev-test" {
  custom_parameters {
    no_public_ip        = "false"
    private_subnet_name = var.private_subnet_name
    /* public_ip_name                                       = "nat-gw-public-ip" */
    /* public_ip_name                                       = var.public_ip_name */
    public_subnet_name                                   = var.public_subnet_name
    storage_account_name                                 = var.storage_account_name
    storage_account_sku_name                             = var.storage_account_name
    virtual_network_id                                   = var.vnet-t-eus-generalnetwork001
    vnet_address_prefix                                  = var.vnet_address_prefix
    public_subnet_network_security_group_association_id  = var.public_subnet_network_security_group_association_id
    private_subnet_network_security_group_association_id = var.private_subnet_network_security_group_association_id
  }

  customer_managed_key_enabled      = "false"
  infrastructure_encryption_enabled = "false"
  location                          = var.location
  name                              = "dbs-signature"
  public_network_access_enabled     = "true"
  resource_group_name               = var.rg-databricks-signature_name
  sku                               = "premium"
}
