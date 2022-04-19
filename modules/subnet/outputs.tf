output "azurerm_subnet_nat_gateway_association_vnetsub-untrust01_nat_gateway_association_id" {
  value = "${azurerm_subnet_nat_gateway_association.vnetsub-untrust01_nat_gateway_association.id}"
}

output "azurerm_subnet_network_security_group_association_vnetsub-Data01_network_security_group_association_id" {
  value = "${azurerm_subnet_network_security_group_association.vnetsub-Data01_network_security_group_association.id}"
}

output "azurerm_subnet_network_security_group_association_vnetsub-Web01-priv_network_security_group_association_id" {
  value = "${azurerm_subnet_network_security_group_association.vnetsub-Web01-priv_network_security_group_association.id}"
}

output "azurerm_subnet_network_security_group_association_vnetsub-Web01_network_security_group_association_id" {
  value = "${azurerm_subnet_network_security_group_association.vnetsub-Web01_network_security_group_association.id}"
}

output "azurerm_subnet_network_security_group_association_vnetsub-management01_network_security_group_association_id" {
  value = "${azurerm_subnet_network_security_group_association.vnetsub-management01_network_security_group_association.id}"
}

output "azurerm_subnet_network_security_group_association_vnetsub-trustgateway01_network_security_group_association_id" {
  value = "${azurerm_subnet_network_security_group_association.vnetsub-trustgateway01_network_security_group_association.id}"
}

output "azurerm_subnet_network_security_group_association_vnetsub-untrust01_network_security_group_association_id" {
  value = "${azurerm_subnet_network_security_group_association.vnetsub-untrust01_network_security_group_association.id}"
}

output "azurerm_subnet_GatewaySubnet_id" {
  value = "${azurerm_subnet.GatewaySubnet.id}"
}

output "azurerm_subnet_GatewaySubnet_name" {
  value = "${azurerm_subnet.GatewaySubnet.name}"
}

output "azurerm_subnet_vnetsub-Data01_id" {
  value = "${azurerm_subnet.vnetsub-Data01.id}"
}

output "azurerm_subnet_vnetsub-Data01_name" {
  value = "${azurerm_subnet.vnetsub-Data01.name}"
}

output "azurerm_subnet_vnetsub-Web01-priv_id" {
  value = "${azurerm_subnet.vnetsub-Web01-priv.id}"
}

output "azurerm_subnet_vnetsub-Web01-priv_name" {
  value = "${azurerm_subnet.vnetsub-Web01-priv.name}"
}

output "azurerm_subnet_vnetsub-Web01_id" {
  value = "${azurerm_subnet.vnetsub-Web01.id}"
}

output "azurerm_subnet_vnetsub-Web01_name" {
  value = "${azurerm_subnet.vnetsub-Web01.name}"
}

output "azurerm_subnet_vnetsub-management01_id" {
  value = "${azurerm_subnet.vnetsub-management01.id}"
}

output "azurerm_subnet_vnetsub-management01_name" {
  value = "${azurerm_subnet.vnetsub-management01.name}"
}

output "azurerm_subnet_vnetsub-trustgateway01_id" {
  value = "${azurerm_subnet.vnetsub-trustgateway01.id}"
}

output "azurerm_subnet_vnetsub-trustgateway01_name" {
  value = "${azurerm_subnet.vnetsub-trustgateway01.name}"
}

output "azurerm_subnet_vnetsub-untrust01_id" {
  value = "${azurerm_subnet.vnetsub-untrust01.id}"
}

output "azurerm_subnet_vnetsub-untrust01_name" {
  value = "${azurerm_subnet.vnetsub-untrust01.name}"
}
