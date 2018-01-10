resource "random_id" "rdm_suffix" {
    byte_length = 3
}

resource "azurerm_storage_account" "mod_account" {
    name                    = "${format("%sstacctst%s", var.name, random_id.random_suffix.hex)}"
    location                = "${var.location}"
    resource_group_name     = "${var.resource_group_name}"
    account_type            = "${var.storage_account_type}"
}

resource "azurerm_storage_container" "mod_container" {
    name                    = "${format("%s-stge-cntrtst", var.name)}"
    resource_group_name     = "${var.resource_group_name}"
    storage_account_name    = "${azurerm_storage_account.mod_account.name}"
    container_access_type   = "${var.container_access_type}"
}

