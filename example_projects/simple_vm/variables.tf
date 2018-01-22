# Make map for each resource

variable "location" {
    default = "North Europe"
}

variable "base_name" {
    default = "tftstbsnm"
}

variable "networking_resource_group" {
    default = "RG-VN-E0-VAL"
}

variable "resource_group" {
    type = "map"

    default = {
        name = "RG-TFTST-VAL-DEV"
    }
}

variable "vm" {
    type = "map"

    default = {
        name = "uztftst01"
    }
}

variable "storage_account" {
    type = "map"

    default = {
        name = "zstorageaccbuildev01"
    }
}

variable "container" {
    type = "map"

    default = {
        name = "storageaccbuildxyzctnr"
    }
}

variable "vnet" {
    type = "map"

    default = {
        name = "vnet-private"
    }
}

variable "subnet" {
    type = "map"

    default = {
        name = "subnet-private"
    }
}

variable "nic" {
    type = "map"

    default = {
        name = "nic-uprivate01"
    }
}

variable "automation" {
    type = "map"

    default = {
        name = "aa-tftst-val-dev"
    }
}
