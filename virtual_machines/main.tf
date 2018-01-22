resource "random_id" "rdm_suffix" {
    byte_length = 3
}

#resource "azurerm_managed_disk" "managed_disk" {
#  name = "acctestmd"
#  location = "${var.location}"
#  resource_group_name = "${var.resource_group_name}"
#  storage_account_type = "Standard_LRS"
#  create_option = "Empty"
#  disk_size_gb = "1"
#
#  tags {
#    environment = "staging"
#  }
#}

resource "azurerm_virtual_machine" "vm" {
  name                  = "${var.name}"
  location              = "${var.location}"
  resource_group_name   = "${var.resource_group_name}"
  network_interface_ids = ["${var.nic_id}"]
  vm_size               = "Standard_DS1_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "osdisk_${var.name}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

#  storage_data_disk {
#    name            = "${azurerm_managed_disk.managed_disk.name}"
#    managed_disk_id = "${azurerm_managed_disk.managed_disk.id}"
#    create_option   = "Attach"
#    lun             = 1
#    disk_size_gb    = "${azurerm_managed_disk.managed_disk.disk_size_gb}"
#  }

  os_profile {
    computer_name  = "hostname"
    admin_username = "vmadmin"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags {
    environment = "staging"
  }
}
