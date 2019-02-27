resource "azurerm_subnet" "AZ-SUB-10-50-1-FRONT-END" {
  name                 = "${lookup(var.subnet_info["front_end"],"name")}"
  address_prefix       = "${lookup(var.subnet_info["front_end"],"cidr")}"
  virtual_network_name = "${azurerm_virtual_network.vnet-10-50.name}"
  resource_group_name  = "${azurerm_resource_group.resource_group_name_prod.name}"
}

resource "azurerm_subnet" "AZ-SUB-10-50-2-BACK-END" {
  name                 = "${lookup(var.subnet_info["back_end"],"name")}"
  address_prefix       = "${lookup(var.subnet_info["back_end"],"cidr")}"
  virtual_network_name = "${azurerm_virtual_network.vnet-10-50.name}"
  resource_group_name  = "${azurerm_resource_group.resource_group_name_prod.name}"
}
