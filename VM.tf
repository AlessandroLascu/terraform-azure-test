/* # NICs
resource "azurerm_network_interface" "NJAAZEU01_nic" {
  name                = "NJAAZEU01-NIC"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.terraform_rg_prod.name}"

  #network_security_group_id = "${azurerm_network_security_group.azeu_blockinternet_nsg.id}"

  ip_configuration {
    name                          = "NJAAZEU01-Private"
    subnet_id                     = "${azurerm_subnet.AZ-SUB-10-50-5-MANAGE.id}"
    private_ip_address_allocation = "static"
    private_ip_address            = "10.50.5.4"

    # public_ip_address_id 	  = "${azurerm_public_ip.njaazeu01_pip.id}"
  }
  tags {
    group       = "Terraform"
    environment = "Production"
  }
}

# VIRTUAL MACHINE DEFINITION
resource "azurerm_virtual_machine" "NJAAZEU01-VM" {
  name                  = "NJAAZEU01"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.terraform_rg_prod.name}"
  network_interface_ids = ["${azurerm_network_interface.NJAAZEU01_nic.id}"]
  vm_size               = "Standard_DS1_v2"

  #This will delete the OS disk and data disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  # IMAGE
  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2012-R2-Datacenter"
    version   = "latest"
  }

  # OS DISK
  storage_os_disk {
    name = "NJAAZEU01-osdisk"

    #vhd_uri           = "${azurerm_storage_account.NJAAZEU01_storage_account.primary_blob_endpoint}${azurerm_storage_container.NJAAZEU01_container.name}/NJAAZEU01-osdisk.vhd"
    disk_size_gb      = "32"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  # OS PROFILE
  os_profile {
    computer_name  = "NJAAZEU01"
    admin_username = "${var.vm_username}"
    admin_password = "${var.vm_password}"
  }

  os_profile_windows_config {
    enable_automatic_upgrades = false
    provision_vm_agent        = true
  }

  tags {
    group = "Terraform"
  }
}
 */

