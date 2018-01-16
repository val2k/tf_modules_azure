output "vnet_name" {
	value = "${azurerm_virtual_network.vnet.name}"
}

output "subnet_name" {
	value = "${azurerm_subnet.subnet.name}"
}

output "nic_name" {
	value = "${azurerm_network_interface.nic.name}"
}

output "nic_id" {
	value = "${azurerm_network_interface.nic.id}"
}
