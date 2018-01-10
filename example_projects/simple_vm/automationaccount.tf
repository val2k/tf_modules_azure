module "autoaccount" {
    source                 = "../../automation_accounts"
    
    name                   = "${var.name}"
    location               = "${var.location}"
    resource_grp_name      = "${module.resource_grp.name}"
}
