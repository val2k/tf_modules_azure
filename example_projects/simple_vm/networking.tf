module "networking" {
    source                  = "../../networks/basic"
    
    base_name               = "${module.vm.name}"
    subnet_name             = "${var.subnet["name"]}"
    nic_name                = "${var.nic["name"]}"
    vnet_name               = "${var.vnet["name"]}"
    resource_group_name     = "${module.resource_group.name}"
    location                = "${var.location}"
}
