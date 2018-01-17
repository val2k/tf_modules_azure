module "resource_group" {
    source               = "../../resource_groups"
    
    name                 = "${var.resource_group_name}"
    location             = "${var.location}"
    resource_lst         = "${var.resource_group_name_lst}"
    resource_group_name  = "${var.resource_group_name}"
}
