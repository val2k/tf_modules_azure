module "networking" {
    source = "../../networks"
    
    subnet_name             = "${var.subnet_name}"
    nic_name                = "${var.nic_name}"
    vnet_name               = "${var.vnet_name}"
    rscg_name               = "${module.resource_group.name}"
    location                = "${var.location}"
}
