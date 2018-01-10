resource "random_id" "rdm_suffix" {
    byte_length = 3
}

resource "azurerm_resource_group" "resource_group" {
    name     = "${format("RG-%s-%s", var.base_name, random_id.rdm_suffix.hex)}"
    location = "${var.location}"
}
