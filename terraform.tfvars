subscription_id = "cf351e9e-cc4c-4bd8-a496-dc72d29e2c99"
tenant_id = "8a220960-e39b-43f9-af4b-a743c1bb64e8"

location = "West Europe"

terraform_rg_prod = "AZ-TF-RG"

vnet_info = {
  "name"        = "AZ-VNET-10-50"
  "cidr"        = "10.50.0.0/16"
  "dns_servers" = "10.40.9.4,172.16.2.50"
}

subnet_info = {
 
    "front_end" = {
        "name"   = "AZ-SUB-10-50-1-FRONT-END"
        "cidr" = "10.50.1.0/24"
    } 

    "back_end" = {
        "name"   = "AZ-SUB-10-50-2-BACK-END"
        "cidr" = "10.50.2.0/24"
    } 

    "gateway_subnet" = {
        "name"   = "GatewaySubnet"
        "cidr" = "10.50.255.224/27"
    }

}

storage_account_name = "tfdemostorestd" # globally unique name

demo_vm_name = "TF-VM-01"
demo_vm_size = "Standard_DS1_v2"
demo_vm_username = "azlocal"
demo_vm_password = "Azure_local!"

##################################
# Site to site connectivity info #
##################################

# Local Network Gateway
local_network_gw_name = "AZ-ON-PREM-GW"
local_network_gw_address = "217.25.174.251"
local_network_gw_address_space = ["10.16.9.0/24", "10.16.0.0/21", "10.16.10.0/24"]

# Virtual Network Gateway
virtual_network_gw_info = {
  "subnet_address_prefix" = "10.50.255.224/27"
  "name"                  = "AZ-VNET-GW"
  "type"                  = "Vpn"
  "vpn_type"              = "RouteBased"
  "active_active"         = "false"
  "enable_bgp"            = "false"
  "sku"                   = "Basic"
}

# Virtual Network Gateway Connection
virtual_network_gw_connection_info = {
  "name" = "AZ-VNET-ON-PREM-CONNECTION"
  "type" = "IPsec"
  #"shared_key" = "4-v3ry-53cr37-1p53c-5h4r3d-k3y"
}
