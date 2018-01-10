module "resource_group" {
    source          = "../../resources_group"
    
    name            = "${var.name}"
    location        = "${var.location}"
}
