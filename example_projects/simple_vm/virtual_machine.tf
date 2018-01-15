module "vm" {
    source                 = "../../virtual_machines"
    
    name                   = "${var.vm_name}"
    location               = "${var.location}"
    resource_grp_name      = "${module.resource_grp.name}"
    nic_id                 = "${module.networking.nic_id}"
}
