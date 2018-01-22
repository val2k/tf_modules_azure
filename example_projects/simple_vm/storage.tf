module "storage" {
    source                 = "../../storage_accounts"
    
    storage_name           = "${var.storage_account["name"]}"
    container_name         = "${var.container["name"]}"
    location               = "${var.location}"
    resource_group_name    = "${module.resource_group.name}"
}
