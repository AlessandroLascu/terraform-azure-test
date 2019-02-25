provider "azurerm" {
  subscription_id = "cf351e9e-cc4c-4bd8-a496-dc72d29e2c99"
  tenant_id       = "8a220960-e39b-43f9-af4b-a743c1bb64e8"
}

resource "azurerm_resource_group" "resource_group_name_prod" {
  name     = "AZ-TF-RG"
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnet-10-50" {
  location            = "West Europe"
  resource_group_name = "AZ-TF-RG"
  name                = "AZ-VNET-10-50"
  address_space       = ["10.50.0.0/16"]
  depends_on          = ["azurerm_resource_group.resource_group_name_prod"]
}

resource "azurerm_subnet" "AZ-SUB-10-50-1-FRONT-END" {
  name                 = "AZ-SUB-10-50-1-FRONT-END"
  address_prefix       = "10.50.1.0/24"
  virtual_network_name = "AZ-VNET-10-50"
  resource_group_name  = "AZ-TF-RG"
  #depends_on           = ["azurerm_virtual_network.vnet-10-50"]
}
