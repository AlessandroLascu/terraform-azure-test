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

variable "vnet_info" {
  type        = "map"
  description = "Block for Virtual Network definition, specifying name and CIDR"
}

variable "subnet_info" {
  type        = "map"
  description = "Block for subnets definition, specifying prefixes and names"
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

variable "demo_vm_username" {
  description = "Enter admin username"
}

variable "demo_vm_password" {
  description = "Enter admin password"
}

###########################################
# Site to site VPN connectivity variables #
###########################################

# Local Network Gateway variables 
variable "local_network_gw_name" {
  description = "Name of the local network gateway object"
}

variable "local_network_gw_address" {
  description = "IP address of the device on-premise for VPN connection"
}

variable "local_network_gw_address_space" {
  type        = "list"
  description = "The address space representing on-premise networks to be connected through VPN"
}

# Virtual Network Gateway variables
variable "virtual_network_gw_info" {
  type        = "map"
  description = "Block for Virtual Network Gateway info such as Gateway Subnet address prefix and type"
}

# Virtual Network Gateway Connection variables
variable "virtual_network_gw_connection_info" {
  type        = "map"
  description = "Block for Virtual Network Gateway Connection info such as name and type (IPsec)"
}

variable "virtual_network_gw_connection_shared_key" {
  default = "4-v3ry-53cr37-1p53c-5h4r3d-k3y"
  description = "Variable to specify the shared key for IPSec"
}
