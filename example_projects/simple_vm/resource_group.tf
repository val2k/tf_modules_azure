module "resource_group" {
    source          = "../../resource_groups"
    
    name            = "${var.name}"
    location        = "${var.location}"
}
