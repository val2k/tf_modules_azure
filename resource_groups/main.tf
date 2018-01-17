resource "random_id" "rdm_suffix" {
    byte_length = 3
}

resource "azurerm_resource_group" "resource_group" {
    #count    = "${length(var.resource_lst)}"
    #name     = "${var.resource_lst[count.index]}"
    name     = "${var.resource_group_name}"
    location = "${var.location}"
}

resource "azurerm_resource_group" "resource_group_test" {
    count    = "${length(var.resource_lst)}"
    #name     = "${var.resource_group_name}"
    name     = "${var.resource_lst[count.index]}"
    location = "${var.location}"
}
