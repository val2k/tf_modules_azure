variable "resource_group_name" {
    type = "string"
}

variable "storage_name" {
    type = "string"
}

variable "container_name" {
    type = "string"
}

variable "location" {
    type = "string"
}

variable "tier" {
    type = "string"
    default = "Standard" 
}

variable "replication_type" {
    type = "string"
    default = "LRS"
}

variable "container_access_type" {
    type = "string"
    default     = "private"
}
