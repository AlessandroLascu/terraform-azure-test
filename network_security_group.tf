resource "azurerm_network_security_group" "allow_RDP_nsg" {
  name                = "AllowRDP-NSG"
  location            = "West Europe"
  resource_group_name = "AZ-TF-RG"

  security_rule {
    name                       = "Allow_RDP"
    priority                   = 1000
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "TCP"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags {
    environment = "Production"
    provisioning = "Terraform"
  }
}

