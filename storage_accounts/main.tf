resource "random_id" "rdm_suffix" {
    byte_length = 3
}

resource "azurerm_storage_account" "storage_account" {
    name                     = "${var.storage_name}"
    location                 = "${var.location}"
    resource_group_name      = "${var.resource_group_name}"
    account_tier             = "${var.tier}"
    account_replication_type = "${var.replication_type}"
}

resource "azurerm_storage_container" "storage_container" {
    name                    = "${var.container_name}"
    resource_group_name     = "${var.resource_group_name}"
    storage_account_name    = "${azurerm_storage_account.storage_account.name}"
    container_access_type   = "${var.container_access_type}"
}

