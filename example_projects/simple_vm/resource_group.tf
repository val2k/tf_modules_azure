module "resource_group" {
    source               = "../../resource_groups"
    
    name                 = "${var.resource_group["name"]}"
    location             = "${var.location}"
}
