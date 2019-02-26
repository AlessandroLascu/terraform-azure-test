resource "azurerm_resource_group" "resource_group_name_prod" {
  name     = "${var.terraform_rg_prod}"
  location = "${var.location}"

  tags {
    group       = "Terraform"
    environment = "Production"
  }
}
