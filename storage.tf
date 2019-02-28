# STORAGE ACCOUNT
resource "azurerm_storage_account" "terraform_rg_std_storage_account" {
  #name                     = "test"                 # unique name
  name                     = "tfdemostorestd"                 # unique name
  resource_group_name      = "AZ-TF-RG"
  location                 = "West Europe"  
  account_kind             = "StorageV2"                      # Kind of account: can be Storage, StorageV2, BlobStorage
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags {
    environment = "Production"
    provisioning = "Terraform"
  }
}
