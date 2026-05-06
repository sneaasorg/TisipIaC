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

variable "subnet_id" {
  description = "ID til subnet frå nettverksmodulen"
  type        = string
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

variable "tags" {
  description = "Tags for ressursane"
  type        = map(string)
}