resource "azurerm_subnet_nat_gateway_association" "vnetsub-untrust01_nat_gateway_association" {
  nat_gateway_id = var.ng-t-eus-pip-t-azforti01
  subnet_id      = azurerm_subnet_network_security_group_association.vnetsub-untrust01_network_security_group_association.id
}
