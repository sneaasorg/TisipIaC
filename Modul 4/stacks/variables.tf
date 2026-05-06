variable "company" {
  description = "Selskapsnamn for prefix"
  type        = string
}

variable "environment" {
  description = "Miljønamn (dev/test/prod)"
  type        = string
}

variable "project" {
  description = "Prosjektnamn"
  type        = string
}

variable "location" {
  description = "Azure-region"
  type        = string
}

variable "vnet_address_space" {
  description = "Adresserom for VNet"
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "Adresseprefix for subnet"
  type        = list(string)
}

variable "vm_size" {
  description = "Storleik på VM"
  type        = string
}

variable "admin_username" {
  description = "Admin-brukarnamn"
  type        = string
}

variable "admin_password" {
  description = "Admin-passord"
  type        = string
  sensitive   = true
}