module "networking" {
    source                  = "../../networks"
    
    subnet_name             = "${var.subnet_name}"
    nic_name                = "${var.nic_name}"
    vnet_name               = "${var.vnet_name}"
    resource_grp_name       = "${module.resource_grp.name}"
    location                = "${var.location}"
}
