resource "azurerm_subnet" "AZ-SUB-10-50-1-FRONT-END" {
  name                 = "AZ-SUB-10-50-1-FRONT-END"
  address_prefix       = "10.50.1.0/24"
  virtual_network_name = "AZ-VNET-10-50"
  resource_group_name  = "AZ-TF-RG"
  depends_on           = ["azurerm_virtual_network.vnet-10-50"]
}
resource "azurerm_subnet" "AZ-SUB-10-50-2-BACK-END" {
  name                 = "AZ-SUB-10-50-2-BACK-END"
  address_prefix       = "10.50.2.0/24"
  virtual_network_name = "AZ-VNET-10-50"
  resource_group_name  = "AZ-TF-RG"
  depends_on           = ["azurerm_virtual_network.vnet-10-50"]
}

# resource "azurerm_subnet" "AZ-SUB-10-50-3-DATA" {
#   name                 = "AZ-SUB-10-50-3-DATA"
#   address_prefix       = "10.50.3.0/24"
#   virtual_network_name = "AZ-VNET-10-50"
#   resource_group_name  = "AZ-TF-RG"
#   depends_on           = ["azurerm_virtual_network.vnet-10-50"]
# }