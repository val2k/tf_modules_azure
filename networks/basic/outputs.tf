output "vnet_name" {
	value = "${azurerm_virtual_network.vnet.name}"
}

output "subnet_name" {
	value = "${azurerm_subnet.subnet.subnet_name}"
}

output "nic_name" {
	value = "${azurerm_network_interface.nic.nic_name}"
}
