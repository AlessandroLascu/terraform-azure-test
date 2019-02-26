resource "azurerm_subnet" "AZ-SUB-10-50-1-FRONT-END" {
  name                 = "AZ-SUB-10-50-1-FRONT-END"
  address_prefix       = "${var.front_end_subnet_cidr}"
  virtual_network_name = "${azurerm_virtual_network.vnet-10-50.id}"
  resource_group_name  = "${azurerm_resource_group.terraform_rg_prod.name}"
}

resource "azurerm_subnet" "AZ-SUB-10-50-2-BACK-END" {
  name                 = "AZ-SUB-10-50-2-BACK-END"
  address_prefix       = "${var.back_end_subnet_cidr}"
  virtual_network_name = "${azurerm_virtual_network.vnet-10-50.id}"
  resource_group_name  = "${azurerm_resource_group.terraform_rg_prod.name}"
}
