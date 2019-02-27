module "site_to_site_vpn" {
  version = "1.0.0"
  source  = "./site_to_site_vpn"

  # General info
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.terraform_rg_prod.name}"

  # Virtual Network Gateway info
  #vnet_name = "${azurerm_virtual_network.vnet.name}"
  vnet_name = "${module.network.my_vnet_name}" # dependency on network module

  virtual_network_gw_info = "${var.virtual_network_gw_info}"

  # Local Network Gateway info
  local_network_gw_name          = "${var.local_network_gw_name}"
  local_network_gw_address       = "${var.local_network_gw_address}"
  local_network_gw_address_space = ["${var.local_network_gw_address_space}"]

  # Virtual Network Gateway Connection info
  virtual_network_gw_connection_info             = "${var.virtual_network_gw_connection_info}"
  virtual_network_gw_connection_shared_key_value = "${var.virtual_network_gw_connection_shared_key}"

  tags {
    group       = "Terraform"
    environment = "Production"
  }
}
