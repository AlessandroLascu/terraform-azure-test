resource "azurerm_network_security_group" "allow_RDP_nsg" {
  name                = "AllowRDP-NSG"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.resource_group_name_prod.name}"

  security_rule {
    name                       = "Allow_RDP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "TCP"
    source_port_range          = "*"
    destination_port_range     = "3390"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags {
    group       = "Terraform"
    environment = "Production"
  }
}

