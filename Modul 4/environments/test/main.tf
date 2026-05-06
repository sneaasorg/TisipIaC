terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "7a3c6854-0fe1-42eb-b5b9-800af1e53d70"
}

module "stack" {
  source = "../../stacks"

  company                 = var.company
  environment             = var.environment
  project                 = var.project
  location                = var.location
  vnet_address_space      = var.vnet_address_space
  subnet_address_prefixes = var.subnet_address_prefixes
  vm_size                 = var.vm_size
  admin_username          = var.admin_username
  admin_password          = var.admin_password
}