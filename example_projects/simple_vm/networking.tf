module "networking" {
    source                  = "../../networks/basic"
    
    subnet_name             = "${var.subnet["name"]}"
    nic_name                = "${var.nic["name"]}"
    vnet_name               = "${var.vnet["name"]}"
    resource_group_name     = "${module.resource_group.test_name}"
    location                = "${var.location}"
}
