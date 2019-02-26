/* resource "azurerm_network_security_group" "azeu_allowrdp_nsg" {
  name                = "AZEU-NSG-AllowRDP"
  location            = "West Europe"
  resource_group_name = "${azurerm_resource_group.terraform_rg_prod.name}"

  security_rule {
    name                       = "AllowRDP"
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
    group = "Terraform"
  }
} */

