# NICs
resource "azurerm_public_ip" "TF-VM-01_pip" {
  name                         = "TF-VM-01-PIP"
  location                     = "West Europe"
  resource_group_name          = "AZ-TF-RG"
  allocation_method            = "Dynamic"

  tags {
    group       = "Terraform"
    environment = "Production"
  }
}

resource "azurerm_network_interface" "TF-VM-01_nic" {
  name                = "TF-VM-01-NIC"
  location            = "West Europe"
  resource_group_name = "AZ-TF-RG"
  network_security_group_id = "${azurerm_network_security_group.allow_RDP_nsg.id}"

  ip_configuration {
    name                          = "TF-VM-01-Primary"
    subnet_id                     = "${azurerm_subnet.AZ-SUB-10-50-1-FRONT-END.id}"
    private_ip_address_allocation = "dynamic"
    # private_ip_address            = "10.50.1.4"
    public_ip_address_id 	        = "${azurerm_public_ip.TF-VM-01_pip.id}"
  }

  tags {
    group       = "Terraform"
    environment = "Production"
  }
}

# VIRTUAL MACHINE DEFINITION
resource "azurerm_virtual_machine" "TF-VM-01-VM" {
  name                  = "TF-VM-01"
  location              = "West Europe"
  resource_group_name   = "AZ-TF-RG"
  network_interface_ids = ["${azurerm_network_interface.TF-VM-01_nic.id}"]
  #vm_size               = "Standard_DS1_v2"
  vm_size               = "Standard_DS2_v2"

  # This will delete the OS disk and data disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  # IMAGE
  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }

  # OS DISK
  storage_os_disk {
    name = "TF-VM-01-osdisk"

    #vhd_uri           = "${azurerm_storage_account.TF-VM-01_storage_account.primary_blob_endpoint}${azurerm_storage_container.TF-VM-01_container.name}/TF-VM-01-osdisk.vhd"
    disk_size_gb      = "127"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  # OS PROFILE
  os_profile {
    computer_name  = "TF-VM-01"
    admin_username = "azlocal"
    admin_password = "Azl0cal$"
  }

  os_profile_windows_config {
    enable_automatic_upgrades = false
    provision_vm_agent        = true
  }

  tags {
    environment = "Production"
    provisioning = "Terraform"
  }
}