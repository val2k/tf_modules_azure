# Make map for each resource
variable "location" {
    default = "North Europe"
}
variable "resource_group_name" {
    default = "valerianterraform-rsc-grp"
}
variable "resource_group_name_lst" {
    default = ["valerianterraformliste-rsc-grp", "valerianterraform-rscnet-grp"]
}
variable "name" {
    default = "testazazyqd"
}
variable "vm_name" {
    default = "vm-linux"
}
variable "storage_name" {
    default = "storageaccbuildxyz"
}
variable "container_name" {
    default = "storageaccbuildxyzctnr"
}
variable "vnet_name" {
    default = "vnet-private"
}
variable "subnet_name" {
    default = "subnet-private"
}
variable "nic_name" {
    default = "nic-private"
}
variable "automation_name" {
    default = "automation"
}
