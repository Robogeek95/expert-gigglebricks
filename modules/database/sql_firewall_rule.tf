resource "azurerm_sql_firewall_rule" "AllowAllWindowsAzureIps" {
  end_ip_address      = "0.0.0.0"
  name                = "AllowAllWindowsAzureIps"
  resource_group_name = var.rg-t-connectivity01_name
  server_name         = var.server_name
  start_ip_address    = "0.0.0.0"
}

resource "azurerm_sql_firewall_rule" "Cisco" {
  end_ip_address      = "72.188.69.152"
  name                = "Cisco"
  resource_group_name = var.rg-t-connectivity01_name
  server_name         = var.server_name
  start_ip_address    = "72.188.69.152"
}

resource "azurerm_sql_firewall_rule" "ClientIPAddress_2022-03-25_07-003A-20-003A-31" {
  end_ip_address      = "204.239.11.6"
  name                = "ClientIPAddress_2022-03-25_07:20:31"
  resource_group_name = var.rg-t-connectivity01_name
  server_name         = var.server_name
  start_ip_address    = "204.239.11.6"
}

resource "azurerm_sql_firewall_rule" "query-editor-9a2b39" {
  end_ip_address      = "5.32.157.4"
  name                = "query-editor-9a2b39"
  resource_group_name = var.rg-t-connectivity01_name
  server_name         = var.server_name
  start_ip_address    = "5.32.157.4"
}
