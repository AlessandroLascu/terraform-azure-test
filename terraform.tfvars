subscription_id = "cf351e9e-cc4c-4bd8-a496-dc72d29e2c99"
tenant_id = "8a220960-e39b-43f9-af4b-a743c1bb64e8"

location = "West Europe"

terraform_rg_prod = "AZ-TF-RG"

/* vnet_name = "AZ-VNET-10-50"
vnet_cidr = "10.50.0.0/16"

front_end_subnet_cidr = "10.50.1.0/24"
back_end_subnet_cidr = "10.50.2.0/24" */

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

}

demo_vm_name = "TF-VM-01"
demo_vm_size = "Standard_DS1_v2"

storage_account_name = "tfdemostorestd" # globally unique name
