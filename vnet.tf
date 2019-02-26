resource "azurerm_virtual_network" "vnet-10-50" {
  location = "West Europe"

  #resource_group_name = "AZ-TF-RG"
  resource_group_name = "${azurerm_resource_group.terraform_rg_prod.name}"
  name                = "AZ-VNET-10-50"
  address_space       = ["10.50.0.0/16"]

  #dns_servers         = "192.168.86.44,172.16.2.54"
}
