resource "random_id" "rdm_suffix" {
    byte_length = 3
}

resource "azurerm_automation_account" "auto_account" {
    name                     = "${format("%sstacctst%s", var.name, random_id.rdm_suffix.hex)}"
    location                 = "${var.location}"
    resource_group_name      = "${var.rscg_name}"

    sku {
        name = "Basic"
    }

    tags {
        environment = "development"
    }
}


