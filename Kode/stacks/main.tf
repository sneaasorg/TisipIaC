locals {
  prefix = "${var.company}-${var.environment}-${var.project}"

  common_tags = {
    Environment = var.environment
    Project     = var.project
    Owner       = var.company
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_resource_group" "main" {
  name     = "${local.prefix}-rg"
  location = var.location
  tags     = local.common_tags
}

module "network" {
  source = "../modules/network"

  rg_name                 = azurerm_resource_group.main.name
  location                = azurerm_resource_group.main.location
  prefix                  = local.prefix
  address_space           = var.vnet_address_space
  subnet_address_prefixes = var.subnet_address_prefixes
  tags                    = local.common_tags
}

module "compute" {
  source = "../modules/compute-vm"

  rg_name        = azurerm_resource_group.main.name
  location       = azurerm_resource_group.main.location
  prefix         = local.prefix
  subnet_id      = module.network.subnet_id
  vm_size        = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
  tags           = local.common_tags
}