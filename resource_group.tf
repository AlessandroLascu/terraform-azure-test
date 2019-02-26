resource "azurerm_resource_group" "resource_group_name_prod" {
  name     = "AZ-TF-RG"
  location = "West Europe"

  tags {
    environment = "Production"
    provisioning = "Terraform"
  }

}
