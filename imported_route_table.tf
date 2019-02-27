# terraform import azurerm_route_table.imported_route_table /subscriptions/cf351e9e-cc4c-4bd8-a496-dc72d29e2c99/resourceGroups/AZ-TF-RG/providers/Microsoft.Network/routeTables/Test-RT

resource "azurerm_route_table" "imported_route_table" {
    # to be populated after import
    name                         = "Test-RT"
    location                     = "${var.location}"
    resource_group_name          = "${azurerm_resource_group.resource_group_name_prod.name}"
}