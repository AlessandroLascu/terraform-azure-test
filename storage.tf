# STORAGE ACCOUNT
/* resource "azurerm_storage_account" "terraform_rg_std_storage_account" {
  name                     = "azeuprodstorestandard"                            # unique name
  resource_group_name      = "${azurerm_resource_group.terraform_rg_prod.name}"
  location                 = "West Europe"
  account_replication_type = "LRS"
  account_tier             = "Standard"

  tags {
    group       = "Terraform"
    environment = "Production"
  }
} */

