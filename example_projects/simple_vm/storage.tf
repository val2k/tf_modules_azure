module "storage" {
    source                 = "../../storage_accounts"
    
    storage_name           = "${var.storage["name"]}"
    container_name         = "${var.container["name"]}"
    location               = "${var.location}"
    resource_group_name    = "${module.resource_group.test_name}"
}
