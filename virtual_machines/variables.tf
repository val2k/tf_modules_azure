variable "resource_group_name" {
    type = "string"
}

variable "name" {
    type = "string"
}

variable "location" {
    type = "string"
}

variable "nic_id" {
    type = "string"
}

variable "osdisk_name" {
    type    = "string"
    default = "osdisk_uzdsk01"
}
