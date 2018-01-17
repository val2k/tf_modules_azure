module "storage" {
    source                 = "../../storage_accounts"
    
    storage_name           = "${var.storage_name}"
    container_name         = "${var.container_name}"
    location               = "${var.location}"
    resource_group_name    = "${module.resource_group.test_name}"
}
