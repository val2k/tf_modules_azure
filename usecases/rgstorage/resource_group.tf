module "resource_group" {
    source = "../../resources_group"
    
    base_name                = "${var.base_name}"
    location                 = "${var.location}"
}
