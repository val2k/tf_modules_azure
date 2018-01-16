module "resource_group" {
    source          = "../../resource_groups"
    
    name            = "${var.resource_group_name}"
    location        = "${var.location}"
}
