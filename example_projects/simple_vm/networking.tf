module "networking" {
    source                  = "../../networks/basic"
    
    subnet_name             = "${var.subnet_name}"
    nic_name                = "${var.nic_name}"
    vnet_name               = "${var.vnet_name}"
    resource_group_name     = "${module.resource_group.test_name}"
    location                = "${var.location}"
}
