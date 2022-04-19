resource "azurerm_network_watcher" "NetworkWatcher_eastus" {
  location            = "${var.location}"
  name                = "NetworkWatcher_eastus"
  resource_group_name = var.NetworkWatcherRG_name
}
