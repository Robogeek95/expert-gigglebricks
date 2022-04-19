resource "azurerm_linux_virtual_machine" "vm_27500a7011f34e7e95ba5ff557a00690" {
  admin_ssh_key {
    public_key = "ssh-rsa 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\n"
    username   = "ubuntu"
  }

  admin_username                  = "ubuntu"
  allow_extension_operations      = "true"
  computer_name                   = "27500a7011f34e7e95ba5ff557a00690"
  disable_password_authentication = "true"
  encryption_at_host_enabled      = "false"
  extensions_time_budget          = "PT1H30M"
  location                        = var.location
  max_bid_price                   = "-1"
  name                            = "27500a7011f34e7e95ba5ff557a00690"
  network_interface_ids           = [var.nic_27500a7011f34e7e95ba5ff557a00690-privateNIC_id, var.nic_27500a7011f34e7e95ba5ff557a00690-publicNIC_id]

  os_disk {
    caching                   = "ReadWrite"
    disk_size_gb              = "30"
    name                      = "27500a7011f34e7e95ba5ff557a00690-osDisk"
    storage_account_type      = "Premium_LRS"
    write_accelerator_enabled = "false"
  }

  patch_mode            = "ImageDefault"
  /* platform_fault_domain = "-1" */
  priority              = "Regular"
  provision_vm_agent    = "true"
  resource_group_name   = var.rg-databricks-signature_name
  secure_boot_enabled   = "false"
  size                  = "Standard_DS3_v2"

  source_image_reference {
    offer     = "Databricks"
    publisher = "AzureDatabricks"
    sku       = "DatabricksWorker"
    version   = "3.69.0"
  }

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "27500a7011f34e7e95ba5ff557a00690"
    management_service       = "instance_manager_service"
  }

  vtpm_enabled = "false"
}

resource "azurerm_linux_virtual_machine" "b15b5f4532974f4aa626cf82bdf0bc6d" {
  admin_ssh_key {
    public_key = "ssh-rsa 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\n"
    username   = "ubuntu"
  }

  admin_username                  = "ubuntu"
  allow_extension_operations      = "true"
  computer_name                   = "b15b5f4532974f4aa626cf82bdf0bc6d"
  disable_password_authentication = "true"
  encryption_at_host_enabled      = "false"
  eviction_policy                 = "Deallocate"
  extensions_time_budget          = "PT1H30M"
  location                        = var.location
  max_bid_price                   = "-1"
  name                            = "b15b5f4532974f4aa626cf82bdf0bc6d"
  network_interface_ids           = [var.nic_b15b5f4532974f4aa626cf82bdf0bc6d-privateNIC_id, var.nic_b15b5f4532974f4aa626cf82bdf0bc6d-publicNIC_id]

  os_disk {
    caching                   = "ReadWrite"
    disk_size_gb              = "30"
    name                      = "b15b5f4532974f4aa626cf82bdf0bc6d-osDisk"
    storage_account_type      = "Premium_LRS"
    write_accelerator_enabled = "false"
  }

  patch_mode            = "ImageDefault"
  /* platform_fault_domain = "-1" */
  priority              = "Spot"
  provision_vm_agent    = "true"
  resource_group_name   = var.rg-databricks-signature_name
  secure_boot_enabled   = "false"
  size                  = "Standard_DS3_v2"

  source_image_reference {
    offer     = "Databricks"
    publisher = "AzureDatabricks"
    sku       = "DatabricksWorker"
    version   = "3.69.0"
  }

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "b15b5f4532974f4aa626cf82bdf0bc6d"
    management_service       = "instance_manager_service"
  }

  vtpm_enabled = "false"
}

resource "azurerm_linux_virtual_machine" "f936d79f09a5437f9d2845844c0abf75" {
  admin_ssh_key {
    public_key = "ssh-rsa b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABlwAAAAdzc2gtcnNhAAAAAwEAAQAAAYEAqiG7mZunNwWHHm3Z9JwqhlxYZfxNE12LAHa01tXV/0D9/G4GzQKSes/6JyS7mL072zKi/fc93JI/6HQjk9PYW5SOqvdncnZb5LdgCcUc6ECliWIYbvSSKx2evDEU2ZhwmtW2c85RaGSV91jfgbattfC2s5gqqm3ZwFwKQmY8evxRZZXmQhLtb7zXvfe1tHldc8QLZ4p8yPuPMK6TrCcoAE/5x6yl9CmaHIeGXiQKy1txXyUmwNijASPrwzDTdt9aLrI+KLq47YO0qNtSd39INnvgHKwUB1PFZ+3aXvtVhp8+iLyb4bYJ+l/ynFo8ctgaBeHTppuUQg0wfpJUxa3hqp9BeGv6C+jRdVgIfHIvd9eG0jku/zNFektND3d+hcXnyuURqyCzreuslKavK/Sdvlgko63iJyD4kXNckcjMJwwv6ViOsqEs9iENYBGsRkRKVqPfqaxQ2s6yR9rzE7sqbGfe2zTNTIH7x0yXfueZDb4do6nkBN+BDLB5PE6XliZDAAAFiNbLsfHWy7HxAAAAB3NzaC1yc2EAAAGBAKohu5mbpzcFhx5t2fScKoZcWGX8TRNdiwB2tNbV1f9A/fxuBs0CknrP+icku5i9O9syov33PdySP+h0I5PT2FuUjqr3Z3J2W+S3YAnFHOhApYliGG70kisdnrwxFNmYcJrVtnPOUWhklfdY34G2rbXwtrOYKqpt2cBcCkJmPHr8UWWV5kIS7W+81733tbR5XXPEC2eKfMj7jzCuk6wnKABP+cespfQpmhyHhl4kCstbcV8lJsDYowEj68Mw03bfWi6yPii6uO2DtKjbUnd/SDZ74BysFAdTxWft2l77VYafPoi8m+G2Cfpf8pxaPHLYGgXh06ablEINMH6SVMWt4aqfQXhr+gvo0XVYCHxyL3fXhtI5Lv8zRXpLTQ93foXF58rlEasgs63rrJSmryv0nb5YJKOt4icg+JFzXJHIzCcML+lYjrKhLPYhDWARrEZESlaj36msUNrOskfa8xO7Kmxn3ts0zUyB+8dMl37nmQ2+HaOp5ATfgQyweTxOl5YmQwAAAAMBAAEAAAGBAIgclMpADXenpIJjwIxCpIL6Pn7Za5CitiKY1fVK/vpINOtP24EJHcfDvI60hKGeQ9UKnfwxYfylxRtkT1JlmiMqpzmA1fJtXveM/fjTCl2F2uoe4Q1j/c0g1W4almO/4db+RApCdj7eulw5bheI31FAU+s7Qmc3m46aFFsrEBgU5cowMxeJrQxIORJyq5zHvExx++3Kjir9l4GLKfoBGa+mTF/DcMH2xqUsiAOpMjmf3wQP5QFEUKUI6AYxef0Qkvfskj4ujkDGlQkAmzskTYzNEHY/W/H8gwdEP2kX+j9bD3+7+VRX6Ynw8F8arTshmWaW/vSbqlJP4ZKBwqEYAh8qSfLnPdP0SAuZyjzB4YlumDUoa0/tRyVHANT7ESGyHv0nYBexMyx1okAdPVdX1XO4WAAxRELmUOdgYEyUk4Wu0K7SrGkJX9uvEqD4OufywhnosOK3RGhs2Nt0uuAO7avYKRZqCbKtiSAwx62+zmqM/Awl8vreB4Nese5gBO5FgQAAAMEAw9TL09z+S1mBaAMAzYb1qXzyTZ5MSli92m9cki5QspLyH1V3arUiA9muAujV0o+pQAD/4f5rKsaNLfuCtuCfmAMlYtvkkK6BEmOOztZtfQ68lCDbYQzBkZq4jQXOfWp9kP4kL5ixEtCU/SbYTNmpn5d33Wpgr7AgkigsxC67pO84hFEHrU9bETqxQkS+BkzSsMoomywruiPcV+3YpLegs1EdLbTewPnVZTRdOD1ZSYqTe+B1jL+1z3e43IayFhslAAAAwQDUdEqRcOWnnaSmhM7512yQIe+sIhX1bMMHTHESwwEX9gqU82wf6XSzKeluJz+jegygmWJMbHHVDqNJE9SmCZVTGaSERTKhRBSBxS2FVFt3yAw2E82is6TJjQSt3xKht7nvBAKYZMpmf61lXI98VD3Bgqxap+asMcHYgHe+vNuad+0Zb+0FgwbxGxZf4X3mTSLfYTDxqECIZOUkKS1HypWcVF11yIcVye1YwVUKZS+HXX1VH669TNTGWzkt5Ll7JjcAAADBAM0Au9a31gKxEZLVNDg1hpJM/BA3uJ1OQn7n19nQ4d9IzuPfGBXFuAhZ67qa+8QfsLR+tZKc+gwnT7d4TczcS3KRrV9nnX1Nz09vIDnZozKuhhNGvEClU0LCUK58WLBm653SEr/Xl0OhC/fnoGfjBvPIXdbELvDsJgQYHqXyjNFQQ+rYA+TyC5cdBL/rnJoFKq9gUMM5spRDNCO0ydXkK9hAFojf0ESqy+JtERcfw91FBH2O+kt5WbHfz0PWmEY6VQAAABByb290QEw1Q0cwNTI0WkY0AQ==\n"
    username   = "ubuntu"
  }

  admin_username                  = "ubuntu"
  allow_extension_operations      = "true"
  computer_name                   = "f936d79f09a5437f9d2845844c0abf75"
  disable_password_authentication = "true"
  encryption_at_host_enabled      = "false"
  eviction_policy                 = "Deallocate"
  extensions_time_budget          = "PT1H30M"
  location                        = var.location
  max_bid_price                   = "-1"
  name                            = "f936d79f09a5437f9d2845844c0abf75"
  network_interface_ids           = [var.nic_f936d79f09a5437f9d2845844c0abf75-privateNIC_id, var.nic_f936d79f09a5437f9d2845844c0abf75-publicNIC_id]


  os_disk {
    caching                   = "ReadWrite"
    disk_size_gb              = "30"
    name                      = "f936d79f09a5437f9d2845844c0abf75-osDisk"
    storage_account_type      = "Premium_LRS"
    write_accelerator_enabled = "false"
  }

  patch_mode            = "ImageDefault"
  /* platform_fault_domain = "-1" */
  priority              = "Spot"
  provision_vm_agent    = "true"
  resource_group_name   = var.rg-databricks-signature_name
  secure_boot_enabled   = "false"
  size                  = "Standard_DS3_v2"

  source_image_reference {
    offer     = "Databricks"
    publisher = "AzureDatabricks"
    sku       = "DatabricksWorker"
    version   = "3.69.0"
  }

  tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Creator                  = "imp-kalexis@bbaaviation.net"
    DatabricksEnvironment    = "workerenv-5226713277605128"
    Vendor                   = "Databricks"
    databricks-instance-name = "f936d79f09a5437f9d2845844c0abf75"
    management_service       = "instance_manager_service"
  }

  vtpm_enabled = "false"
}

resource "azurerm_linux_virtual_machine" "r-vm-zpa-connector-001" {
  admin_ssh_key {
    public_key = "ssh-rsa b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABlwAAAAdzc2gtcnNhAAAAAwEAAQAAAYEAqiG7mZunNwWHHm3Z9JwqhlxYZfxNE12LAHa01tXV/0D9/G4GzQKSes/6JyS7mL072zKi/fc93JI/6HQjk9PYW5SOqvdncnZb5LdgCcUc6ECliWIYbvSSKx2evDEU2ZhwmtW2c85RaGSV91jfgbattfC2s5gqqm3ZwFwKQmY8evxRZZXmQhLtb7zXvfe1tHldc8QLZ4p8yPuPMK6TrCcoAE/5x6yl9CmaHIeGXiQKy1txXyUmwNijASPrwzDTdt9aLrI+KLq47YO0qNtSd39INnvgHKwUB1PFZ+3aXvtVhp8+iLyb4bYJ+l/ynFo8ctgaBeHTppuUQg0wfpJUxa3hqp9BeGv6C+jRdVgIfHIvd9eG0jku/zNFektND3d+hcXnyuURqyCzreuslKavK/Sdvlgko63iJyD4kXNckcjMJwwv6ViOsqEs9iENYBGsRkRKVqPfqaxQ2s6yR9rzE7sqbGfe2zTNTIH7x0yXfueZDb4do6nkBN+BDLB5PE6XliZDAAAFiNbLsfHWy7HxAAAAB3NzaC1yc2EAAAGBAKohu5mbpzcFhx5t2fScKoZcWGX8TRNdiwB2tNbV1f9A/fxuBs0CknrP+icku5i9O9syov33PdySP+h0I5PT2FuUjqr3Z3J2W+S3YAnFHOhApYliGG70kisdnrwxFNmYcJrVtnPOUWhklfdY34G2rbXwtrOYKqpt2cBcCkJmPHr8UWWV5kIS7W+81733tbR5XXPEC2eKfMj7jzCuk6wnKABP+cespfQpmhyHhl4kCstbcV8lJsDYowEj68Mw03bfWi6yPii6uO2DtKjbUnd/SDZ74BysFAdTxWft2l77VYafPoi8m+G2Cfpf8pxaPHLYGgXh06ablEINMH6SVMWt4aqfQXhr+gvo0XVYCHxyL3fXhtI5Lv8zRXpLTQ93foXF58rlEasgs63rrJSmryv0nb5YJKOt4icg+JFzXJHIzCcML+lYjrKhLPYhDWARrEZESlaj36msUNrOskfa8xO7Kmxn3ts0zUyB+8dMl37nmQ2+HaOp5ATfgQyweTxOl5YmQwAAAAMBAAEAAAGBAIgclMpADXenpIJjwIxCpIL6Pn7Za5CitiKY1fVK/vpINOtP24EJHcfDvI60hKGeQ9UKnfwxYfylxRtkT1JlmiMqpzmA1fJtXveM/fjTCl2F2uoe4Q1j/c0g1W4almO/4db+RApCdj7eulw5bheI31FAU+s7Qmc3m46aFFsrEBgU5cowMxeJrQxIORJyq5zHvExx++3Kjir9l4GLKfoBGa+mTF/DcMH2xqUsiAOpMjmf3wQP5QFEUKUI6AYxef0Qkvfskj4ujkDGlQkAmzskTYzNEHY/W/H8gwdEP2kX+j9bD3+7+VRX6Ynw8F8arTshmWaW/vSbqlJP4ZKBwqEYAh8qSfLnPdP0SAuZyjzB4YlumDUoa0/tRyVHANT7ESGyHv0nYBexMyx1okAdPVdX1XO4WAAxRELmUOdgYEyUk4Wu0K7SrGkJX9uvEqD4OufywhnosOK3RGhs2Nt0uuAO7avYKRZqCbKtiSAwx62+zmqM/Awl8vreB4Nese5gBO5FgQAAAMEAw9TL09z+S1mBaAMAzYb1qXzyTZ5MSli92m9cki5QspLyH1V3arUiA9muAujV0o+pQAD/4f5rKsaNLfuCtuCfmAMlYtvkkK6BEmOOztZtfQ68lCDbYQzBkZq4jQXOfWp9kP4kL5ixEtCU/SbYTNmpn5d33Wpgr7AgkigsxC67pO84hFEHrU9bETqxQkS+BkzSsMoomywruiPcV+3YpLegs1EdLbTewPnVZTRdOD1ZSYqTe+B1jL+1z3e43IayFhslAAAAwQDUdEqRcOWnnaSmhM7512yQIe+sIhX1bMMHTHESwwEX9gqU82wf6XSzKeluJz+jegygmWJMbHHVDqNJE9SmCZVTGaSERTKhRBSBxS2FVFt3yAw2E82is6TJjQSt3xKht7nvBAKYZMpmf61lXI98VD3Bgqxap+asMcHYgHe+vNuad+0Zb+0FgwbxGxZf4X3mTSLfYTDxqECIZOUkKS1HypWcVF11yIcVye1YwVUKZS+HXX1VH669TNTGWzkt5Ll7JjcAAADBAM0Au9a31gKxEZLVNDg1hpJM/BA3uJ1OQn7n19nQ4d9IzuPfGBXFuAhZ67qa+8QfsLR+tZKc+gwnT7d4TczcS3KRrV9nnX1Nz09vIDnZozKuhhNGvEClU0LCUK58WLBm653SEr/Xl0OhC/fnoGfjBvPIXdbELvDsJgQYHqXyjNFQQ+rYA+TyC5cdBL/rnJoFKq9gUMM5spRDNCO0ydXkK9hAFojf0ESqy+JtERcfw91FBH2O+kt5WbHfz0PWmEY6VQAAABByb290QEw1Q0cwNTI0WkY0AQ==\n"
    username   = "zscaleradmin"
  }

  admin_username                  = "zscaleradmin"
  allow_extension_operations      = "true"
  computer_name                   = "r-vm-zpa-connector-001"
  disable_password_authentication = "true"
  encryption_at_host_enabled      = "false"
  extensions_time_budget          = "PT1H30M"
  location                        = var.location
  max_bid_price                   = "-1"
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
  priority              = "Regular"
  provision_vm_agent    = "true"
  resource_group_name   = "RG-ZSCALER-ZPA-CONNECTOR"
  secure_boot_enabled   = "false"
  size                  = "Standard_D4as_v4"

  source_image_reference {
    offer     = "zscaler-private-access"
    publisher = "zscaler"
    sku       = "zpa-con-azure"
    version   = "latest"
  }

  vtpm_enabled = "false"
  zone         = "1"
}
