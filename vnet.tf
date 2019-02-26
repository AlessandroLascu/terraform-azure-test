resource "azurerm_virtual_network" "vnet-10-50" {
  
  location = "West Europe"
  resource_group_name = "AZ-TF-RG"
  name                = "AZ-VNET-10-50"
  address_space       = ["10.50.0.0/16"]

  tags {
    environment = "Production"
    provisioning = "Terraform"
  }

}
