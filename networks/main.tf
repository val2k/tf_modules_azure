resource "random_id" "rdm_suffix" {
    byte_length = 3
}

resource "azurerm_virtual_network" "vnet" {
    name                = "${var.vnet_name}"
    address_space       = ["10.0.0.0/16"]
    location            = "${var.location}"
    resource_group_name = "${var.rscg_name}"
}

resource "azurerm_subnet" "subnet" {
    name                 = "${var.subnet_name}"
    resource_group_name  = "${var.rscg_name}"
    virtual_network_name = "${var.vnet_name}"
    address_prefix       = "10.0.2.0/24"
}

resource "azurerm_network_interface" "nic" {
    name                = "${var.nic_name}"
    location            = "${var.location}"
    resource_group_name = "${var.rscg_name}"

    ip_configuration {
        name                                = "configuration1"
        subnet_id                           = "${azurerm_subnet.subnet.id}"
        private_ip_address_allocation       = "dynamic"


    }
}
