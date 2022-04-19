resource "azurerm_windows_virtual_machine" "vm-t-vmtest01" {
  admin_username             = "bbaadmin"
  allow_extension_operations = "true"
  computer_name              = "vm-t-vmtest01"
  enable_automatic_updates   = "true"
  encryption_at_host_enabled = "false"
  eviction_policy            = "Deallocate"
  extensions_time_budget     = "PT1H30M"
  hotpatching_enabled        = "false"
  admin_password = "default"

  identity {
    type = "SystemAssigned"
  }

  license_type          = "Windows_Server"
  location              = var.location
  max_bid_price         = "-1"
  name                  = "vm-t-vmtest01"
  network_interface_ids = [var.nic_vm-t-vmtest01589_id]

  os_disk {
    caching                   = "ReadWrite"
    disk_size_gb              = "127"
    name                      = "vm-t-vmtest01_OsDisk_1_ae3eaf8d944c4f25af1ff0f870ff325f"
    storage_account_type      = "Premium_LRS"
    write_accelerator_enabled = "false"
  }

  patch_mode            = "AutomaticByOS"
  priority              = "Spot"
  provision_vm_agent    = "true"
  resource_group_name   = "RG-T-VMTEST01"
  secure_boot_enabled   = "false"
  size                  = "Standard_DS1_v2"

  source_image_reference {
    offer     = "WindowsServer"
    publisher = "MicrosoftWindowsServer"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }

  vtpm_enabled = "false"
}
