# STORAGE ACCOUNT
resource "azurerm_storage_account" "terraform_rg_std_storage_account" {
  name                     = "${var.storage_account_name}"
  location                 = "${var.location}"
  resource_group_name      = "${azurerm_resource_group.resource_group_name_prod.name}"  
  account_kind             = "StorageV2"                      # Kind of account: can be Storage, StorageV2, BlobStorage
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags {
    group       = "Terraform"
    environment = "Production"
  }
}
