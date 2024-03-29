variable "location" {
  type        = string
  description = "(Optional) The location for resource deployment"
  default     = "eastus"
}

variable "environment" {
  type        = string
  description = "(Required) Three character environment name"
  default     = "prd"

  validation {
    condition     = length(var.environment) <= 3
    error_message = "Err: Environment cannot be longer than three characters."
  }
}

variable "project" {
  type        = string
  description = "(Required) The project name"
  default     = "test"
}

variable "databricks_sku" {
  type        = string
  description = <<EOT
    (Optional) The SKU to use for the databricks instance"

    Default: standard
EOT
  default     = "trial"

  validation {
    condition     = can(regex("standard|premium|trial", var.databricks_sku))
    error_message = "Err: Valid options are 'standard', 'premium' or 'trial'."
  }
}

variable "public_ip_allocation_method" {
  type    = string
  default = "Static"
}

variable "public_ip_sku" {
  type    = string
  default = "Standard"

  description = <<EOT
    (Optional) The SKU to use for the public ip"

    Default: Standard
EOT

  validation {
    condition     = can(regex("Basic|Standard", var.public_ip_sku))
    error_message = "Err: Valid options are 'Basic', or 'Standard'."
  }
}

variable "load_balancer_sku" {
  type    = string
  default = "Standard"

  description = <<EOT
    (Optional) The SKU to use for the load balancer"

    Default: Basic
EOT

  validation {
    condition     = can(regex("Basic|Standard", var.load_balancer_sku))
    error_message = "Err: Valid options are 'Basic', or 'Standard'."
  }
}

variable "allocation_method" {
  type    = string
  default = "Static"
}

variable "vn_resource_group_name" {
  default = "rg-connectivity01"
}

variable "databricks_resource_group_name" {
  default = "databricks-signature"
}

variable "azure_sql_resource_group_name" {
  default = "databricks-signature-azuresql"
}

variable "virtual_network_name" {
  default = "vnet-t-eus-generalnetwork001"
}

variable "virtual_network_address_prefixes" {
  default = ["10.96.0.0/16"]
}

variable "public_subnet_address_prefixes" {
  default = ["10.96.2.0/24"]
}

variable "private_link_primary_private_ip_address" {
  type    = string
  default = "10.96.2.12"
}

variable "private_link_secondary_private_ip_address" {
  type    = string
  default = "10.96.2.14"
}

variable "private_subnet_address_prefixes" {
  default = ["10.96.5.0/24"]
}

variable "vnetsub-management01_address_prefixes" {
  default = ["10.96.6.0/24"]
}

variable "vnetsub-trustgateway01_address_prefixes" {
  default = ["10.96.7.0/24"]
}

variable "vnetsub-untrust01_address_prefixes" {
  default = ["10.96.8.0/24"]
}

variable "GatewaySubnet_address_prefixes" {
  default = ["10.96.9.0/24"]
}

variable "vnetsub-Data01_address_prefixes" {
  default = ["10.96.10.0/24"]
}

variable "NetworkWatcherRG_name" {
  default = "NetworkWatcherRG"
}

variable "rg-comp01_name" {
  default = "rg-vmcomp01"
}

variable "rg-zscaler-zpa-connector_name" {
  default = "rg-zscaler-zpa-connector"
}


/* tags = {
    ClusterId                = "0328-150057-rjiu1vqe"
    ClusterName              = "ADBCluster"
    Vendor                   = "Databricks"
    databricks-instance-name = "27500a7011f34e7e95ba5ff557a00690"
    management_service       = "instance_manager_service"
  } */
