module "storage" {
    source                 = "../../storage_accounts"
    
    name                   = "${var.storage_name}"
    location               = "${var.location}"
    resource_group_name    = "${module.resource_group.name}"
}
