variable "subscription_id" {
  description = "Subscription ID"
}

variable "tenant_id" {
  description = "Tenant ID"
}

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

variable "storage_account_name" {
  description = "Name for the Storage Account. N.B. must be globally unique."
}

variable "demo_vm_name" {
  description = "Name for demo VM"
}
variable "demo_vm_size" {
  description = "Size for demo VM"
}

variable "vm_username" {
  description = "Enter admin username"
}

variable "vm_password" {
  description = "Enter admin password"
}
