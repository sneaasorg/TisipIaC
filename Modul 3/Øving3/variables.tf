variable "company" {
    description = "Firmanamn - Vert bruk i namngjeving"
    type        = string
}

variable "project" {
    description = "Prosjeknamn - Vert bruk i namngjeving"
    type        = string
}

variable "environment" {
    description = "Miljønamn - Vert bruk i namngjeving - Eks: dev, prod"
    type        = string
}

variable "location" {
    description = "Azure region - Vert bruk i namngjeving"
    type        = string
}

variable "vm_size" {
    description = "Storleik på VMar"
    type        = string
}

variable "admin_username" {
    description = "Admin brukarnamn for VM"
    type        = string  
}

variable "admin_password" {
    description = "Admin passord for VM"
    type        = string
    sensitive   = true
}

variable "vnet_address_space" {
    description = "Adresseromfor VNet"
    type        = list(string)
}

variable "subnet_address_prefixes" {
    description = "Adresseprefix for subnettet"
    type        = list(string)
}

