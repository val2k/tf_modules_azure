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
#variable "resource_groups" {
#    type = "map"
#
#    default = {
#        name = "storageaccbuildxyz"
#    }
#    default = ["valerianterraformliste-rsc-grp", "valerianterraform-rscnet-grp"]
#}

variable "base_name" {
    default = "testazazyqd"
}

variable "vm" {
    type = "map"

    default = {
        name = "vm-linux"
    }
}

variable "storage_account" {
    type = "map"

    default = {
        name = "storageaccbuildxyz"
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

variable "subnet_name" {
    type = "map"

    default = {
        name = "subnet-private"
    }
}

variable "nic_name" {
    type = "map"

    default = {
        name = "nic-private"
    }
}

variable "automation_name" {
    type = "map"

    default = {
        name = "automation"
    }
}
