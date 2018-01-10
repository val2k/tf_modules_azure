resource "random_id" "rdm_suffix" {
    byte_length = 3
}

resource "azurerm_storage_account" "sto_account" {
    name                     = "${format("%sstacctst%s", var.name, random_id.rdm_suffix.hex)}"
    location                 = "${var.location}"
    resource_group_name      = "${var.resource_group_name}"
    account_tier             = "${var.tier}"
    account_replication_type = "${var.replication_type}"
}

resource "azurerm_storage_container" "sto_account" {
    name                    = "${format("%s-stge-cntrtst", var.name)}"
    resource_group_name     = "${var.resource_group_name}"
    storage_account_name    = "${azurerm_storage_account.sto_account.name}"
    container_access_type   = "${var.container_access_type}"
}

