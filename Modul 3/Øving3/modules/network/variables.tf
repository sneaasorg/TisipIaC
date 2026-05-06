variable "rg_name" {
    description = "Navn på resource group"
    type        = string
}

variable "location" {
    description = "Azure region - Vert bruk i namngjeving"
    type        = string
}

variable "prefix" {
    description = "Prefix for ressurser"
    type        = string
}

variable "address_space" {
    description = "Adresserom for VNet"
    type        = list(string)
}

variable "subnet_address_prefixes" {
    description = "Adresseprefix for subnettet"
    type        = list(string)
}

variable "tags" {
    description = "Tags for ressurser"
    type        = map(string)
}

