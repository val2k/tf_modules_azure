module "vm" {
    source                 = "../../virtual_machines"
    
    name                   = "${var.vm_name}"
    location               = "${var.location}"
    resource_group_name    = "${module.resource_group.name}"
    nic_id                 = "${module.networking.nic_id}"
}
