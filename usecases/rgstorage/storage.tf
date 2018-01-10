module "storage" {
    source = "../../storage_account"
    
    name                = "${var.base_name}"
    location            = "${var.location}"
    resource_group_name = "${azurerm_resource_group.resource_group.name}"

}
