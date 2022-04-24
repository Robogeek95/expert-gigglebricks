resource "azurerm_linux_virtual_machine" "vm_27500a7011f34e7e95ba5ff557a00690" {
  /* admin_ssh_key {
    public_key = var.public_key
    username   = var.ubuntu_admin_username
  } */

  ubuntu_admin_username           = var.ubuntu_admin_username
  allow_extension_operations      = "true"
  computer_name                   = "27500a7011f34e7e95ba5ff557a00690"
  disable_password_authentication = "true"
  encryption_at_host_enabled      = "false"
  extensions_time_budget          = "PT1H30M"
  location                        = var.location
  name                            = "27500a7011f34e7e95ba5ff557a00690"
  network_interface_ids           = [var.nic_27500a7011f34e7e95ba5ff557a00690-privateNIC_id, var.nic_27500a7011f34e7e95ba5ff557a00690-publicNIC_id]

  os_disk {
    caching                   = "ReadWrite"
    disk_size_gb              = "30"
    name                      = "27500a7011f34e7e95ba5ff557a00690-osDisk"
    storage_account_type      = "Premium_LRS"
    write_accelerator_enabled = "false"
  }

  patch_mode = "ImageDefault"
  /* platform_fault_domain = "-1" */
  priority            = "Regular"
  provision_vm_agent  = "true"
  resource_group_name = var.rg-databricks-signature_name
  secure_boot_enabled = "false"
  size                = "Standard_DS3_v2"

  source_image_reference {
    offer     = "Databricks"
    publisher = "AzureDatabricks"
    sku       = "DatabricksWorker"
    version   = "3.69.0"
  }

  vtpm_enabled = "false"
}

resource "azurerm_linux_virtual_machine" "b15b5f4532974f4aa626cf82bdf0bc6d" {
  /* admin_ssh_key {
    public_key = var.public_key
    username   = var.ubuntu_admin_username
  } */

  ubuntu_admin_username           = var.ubuntu_admin_username
  allow_extension_operations      = "true"
  computer_name                   = "b15b5f4532974f4aa626cf82bdf0bc6d"
  disable_password_authentication = "true"
  encryption_at_host_enabled      = "false"
  eviction_policy                 = "Deallocate"
  extensions_time_budget          = "PT1H30M"
  location                        = var.location
  name                            = "b15b5f4532974f4aa626cf82bdf0bc6d"
  network_interface_ids           = [var.nic_b15b5f4532974f4aa626cf82bdf0bc6d-privateNIC_id, var.nic_b15b5f4532974f4aa626cf82bdf0bc6d-publicNIC_id]

  os_disk {
    caching                   = "ReadWrite"
    disk_size_gb              = "30"
    name                      = "b15b5f4532974f4aa626cf82bdf0bc6d-osDisk"
    storage_account_type      = "Premium_LRS"
    write_accelerator_enabled = "false"
  }

  patch_mode = "ImageDefault"
  /* platform_fault_domain = "-1" */
  priority            = "Spot"
  provision_vm_agent  = "true"
  resource_group_name = var.rg-databricks-signature_name
  secure_boot_enabled = "false"
  size                = "Standard_DS3_v2"

  source_image_reference {
    offer     = "Databricks"
    publisher = "AzureDatabricks"
    sku       = "DatabricksWorker"
    version   = "3.69.0"
  }

  vtpm_enabled = "false"
}

resource "azurerm_linux_virtual_machine" "f936d79f09a5437f9d2845844c0abf75" {
  /* admin_ssh_key {
    public_key = var.public_key
    username   = var.ubuntu_admin_username
  } */

  ubuntu_admin_username           = var.ubuntu_admin_username
  allow_extension_operations      = "true"
  computer_name                   = "f936d79f09a5437f9d2845844c0abf75"
  disable_password_authentication = "true"
  encryption_at_host_enabled      = "false"
  eviction_policy                 = "Deallocate"
  extensions_time_budget          = "PT1H30M"
  location                        = var.location
  name                            = "f936d79f09a5437f9d2845844c0abf75"
  network_interface_ids           = [var.nic_f936d79f09a5437f9d2845844c0abf75-privateNIC_id, var.nic_f936d79f09a5437f9d2845844c0abf75-publicNIC_id]


  os_disk {
    caching                   = "ReadWrite"
    disk_size_gb              = "30"
    name                      = "f936d79f09a5437f9d2845844c0abf75-osDisk"
    storage_account_type      = "Premium_LRS"
    write_accelerator_enabled = "false"
  }

  patch_mode = "ImageDefault"
  /* platform_fault_domain = "-1" */
  priority            = "Spot"
  provision_vm_agent  = "true"
  resource_group_name = var.rg-databricks-signature_name
  secure_boot_enabled = "false"
  size                = "Standard_DS3_v2"

  source_image_reference {
    offer     = "Databricks"
    publisher = "AzureDatabricks"
    sku       = "DatabricksWorker"
    version   = "3.69.0"
  }

  vtpm_enabled = "false"
}

resource "azurerm_linux_virtual_machine" "r-vm-zpa-connector-001" {
  /* admin_ssh_key {
    public_key = var.public_key
    username   = var.zscalerubuntu_admin_username
  } */

  ubuntu_admin_username           = var.zscalerubuntu_admin_username
  allow_extension_operations      = "true"
  computer_name                   = "r-vm-zpa-connector-001"
  disable_password_authentication = "true"
  encryption_at_host_enabled      = "false"
  extensions_time_budget          = "PT1H30M"
  location                        = var.location
  name                            = "r-vm-zpa-connector-001"
  network_interface_ids           = [var.r-vm-zpa-connecto210_z1_id]

  os_disk {
    caching                   = "ReadWrite"
    disk_size_gb              = "16"
    name                      = "r-vm-zpa-connector-001_OsDisk_1_aaacd96622e4429d9b2f83d7f53314af"
    storage_account_type      = "Premium_LRS"
    write_accelerator_enabled = "false"
  }

  patch_mode = "ImageDefault"

  plan {
    name      = "zpa-con-azure"
    product   = "zscaler-private-access"
    publisher = "zscaler"
  }

  /* platform_fault_domain = "-1" */
  priority            = "Regular"
  provision_vm_agent  = "true"
  resource_group_name = "RG-ZSCALER-ZPA-CONNECTOR"
  secure_boot_enabled = "false"
  size                = "Standard_D4as_v4"

  source_image_reference {
    offer     = "zscaler-private-access"
    publisher = "zscaler"
    sku       = "zpa-con-azure"
    version   = "latest"
  }

  vtpm_enabled = "false"
  zone         = "1"
}
