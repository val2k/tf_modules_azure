variable "resource_group_name" {}
variable "name" {}
variable "location" {}
variable "tier" {
    description = "The storage account type"
    default = "Standard" 
}
variable "replication_type" {
    default = "LRS"
}
variable "container_access_type" {
    description = "The 'interface' for access the container provides"
    default     = "private"
}
