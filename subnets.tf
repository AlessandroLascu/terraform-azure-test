resource "azurerm_subnet" "AZ-SUB-10-50-1-FW-OUT" {
  name                 = "AZ-SUB-10-50-1-FW-OUT"
  address_prefix       = "10.50.1.0/24"
  virtual_network_name = "${azurerm_virtual_network.vnet-10-50.name}"
  resource_group_name  = "AZ-TF-RG"
}

resource "azurerm_subnet" "AZ-SUB-10-50-2-FW-IN" {
  name                 = "AZ-SUB-10-50-2-FW-IN"
  address_prefix       = "10.50.2.0/24"
  virtual_network_name = "${azurerm_virtual_network.vnet-10-50.name}"
  resource_group_name  = "AZ-TF-RG"
}

resource "azurerm_subnet" "AZ-SUB-10-50-3-FW-DMZ" {
  name                 = "AZ-SUB-10-50-3-FW-DMZ"
  address_prefix       = "10.50.3.0/24"
  virtual_network_name = "${azurerm_virtual_network.vnet-10-50.name}"
  resource_group_name  = "AZ-TF-RG"
}

resource "azurerm_subnet" "AZ-SUB-10-50-4-WEB" {
  name                 = "AZ-SUB-10-50-4-WEB"
  address_prefix       = "10.50.4.0/27"
  virtual_network_name = "${azurerm_virtual_network.vnet-10-50.name}"
  resource_group_name  = "AZ-TF-RG"
}

/* resource "azurerm_subnet" "AZ-SUB-10-50-5-MANAGE" {
  name                 = "AZ-SUB-10-50-5-MANAGE"
  address_prefix       = "10.50.5.0/24"
  virtual_network_name = "${azurerm_virtual_network.vnet-10-50.name}"
  resource_group_name  = "AZ-TF-RG"
} */


/* resource "azurerm_subnet" "AZ-SUB-10-50-6-DATA" {
  name                 = "AZ-SUB-10-50-6-DATA"
  address_prefix       = "10.50.6.0/24"
  virtual_network_name = "${azurerm_virtual_network.vnet-10-50.name}"
  resource_group_name  = "AZ-TF-RG"
} */

