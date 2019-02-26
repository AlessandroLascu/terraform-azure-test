variable "location" {
  description = "The default Azure region for the resource provisioning"
}

variable "terraform_rg_prod" {
  description = "Resource group for Production environment"
}

variable "vnet_name" {
  description = "Name for Virtual Network"
}

variable "vnet_cidr" {
  description = "CIDR block for Virtual Network"
}

variable "front_end_subnet_cidr" {
  description = "CIDR block for Front End Subnet"
}

variable "back_end_subnet_cidr" {
  description = "CIDR block for Back End Subnet"
}

variable "vm_username" {
  description = "Enter admin username"
}

variable "vm_password" {
  description = "Enter admin password"
}
