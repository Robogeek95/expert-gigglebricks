resource "azurerm_subnet_network_security_group_association" "vnetsub-Data01_network_security_group_association" {
  network_security_group_id = var.nsg-t-vnetsub-Data01_id
  subnet_id                 = azurerm_subnet.vnetsub-Data01.id
}

resource "azurerm_subnet_network_security_group_association" "vnetsub-Web01-priv_network_security_group_association" {
  network_security_group_id = var.nsg-t-vnetsub-Data01_id
  subnet_id                 = azurerm_subnet.vnetsub-Web01-priv.id
}

resource "azurerm_subnet_network_security_group_association" "vnetsub-Web01_network_security_group_association" {
  network_security_group_id =  var.nsg-t-vnetsub-Data01_id
  subnet_id                 = azurerm_subnet.vnetsub-Web01.id
}

resource "azurerm_subnet_network_security_group_association" "vnetsub-management01_network_security_group_association" {
  network_security_group_id = var.nsg-t-vnetsub-management01_id
  subnet_id                 = azurerm_subnet.vnetsub-management01.id
}

resource "azurerm_subnet_network_security_group_association" "vnetsub-trustgateway01_network_security_group_association" {
  network_security_group_id = var.nsg-t-vnetsub-trustgateway01_id
  subnet_id                 = azurerm_subnet.vnetsub-trustgateway01.id
  
}

resource "azurerm_subnet_network_security_group_association" "vnetsub-untrust01_network_security_group_association" {
  network_security_group_id = var.nsg-t-vnetsub-untrust01_id
  subnet_id                 = azurerm_subnet.vnetsub-untrust01
}
 