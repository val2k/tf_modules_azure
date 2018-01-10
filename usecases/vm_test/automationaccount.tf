module "autoaccount" {
    source = "../../automation_accounts"
    
    name                   = "${var.base_name}"
    location               = "${var.location}"
    rscg_name              = "${module.resource_group.name}"
}
