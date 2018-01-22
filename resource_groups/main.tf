resource "random_id" "rdm_suffix" {
    byte_length = 3
}

resource "azurerm_resource_group" "resource_group" {
    name     = "${var.name}"
    location = "${var.location}"
}

