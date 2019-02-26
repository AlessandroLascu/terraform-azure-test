resource "azurerm_virtual_network" "vnet-10-50" {
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.resource_group_name_prod.name}"
  name                = "${var.vnet_name}"
  address_space       = ["${var.vnet_cidr}"]

}
