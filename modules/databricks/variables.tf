variable "location" {
  type    = string
  default = ""
}

variable "rg-databricks-signature_name" {
  type    = string
  default = ""
}

variable "private_subnet_name" {}
variable "public_subnet_name" {}
variable "storage_account_name" {}
variable "vnet-t-eus-generalnetwork001" {}
variable "vnet_address_prefix" {
  default = "10.139"
}

variable "public_subnet_network_security_group_association_id" {
  
}

variable "private_subnet_network_security_group_association_id" {
  
}
