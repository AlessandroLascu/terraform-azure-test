resource "azurerm_virtual_network" "vnet-10-50" {
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.resource_group_name_prod.name}"
  name                = "${var.vnet_info["name"]}"
  address_space       = ["${var.vnet_info["cidr"]}"]
  dns_servers        = "${split(",", var.vnet_info["dns_servers"])}"

  tags {
    group       = "Terraform"
    environment = "Production"
  }

}
