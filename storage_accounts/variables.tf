variable "resource_group_name" {}
variable "name" {}
variable "location" {}
variable "tier" {
    description = "Standard: , Premium: "
    default = "Standard" 
}
variable "replication_type" {
    description = "LRS: , GRS: "
    default = "LRS"
}
variable "container_access_type" {
    description = ""
    default     = "private"
}