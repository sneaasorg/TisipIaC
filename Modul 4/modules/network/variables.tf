variable "rg_name" {
  description = "Namn på resource group"
  type        = string
}

variable "location" {
  description = "Azure-region"
  type        = string
}

variable "prefix" {
  description = "Prefix for namngjeving"
  type        = string
}

variable "address_space" {
  description = "Adresserom for VNet"
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "Adresseprefix for subnet"
  type        = list(string)
}

variable "tags" {
  description = "Tags for ressursane"
  type        = map(string)
}