resource "azurerm_resource_group" "terraform_rg_prod" {
  name     = "${var.terraform_rg_prod}"
  location = "${var.location}"
}
