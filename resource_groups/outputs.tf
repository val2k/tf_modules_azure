output "name" {
    value = "${azurerm_resource_group.resource_group.name}"
}

output "test_name" {
    value = "${azurerm_resource_group.resource_group_test.0.name}"
}
