output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "vnet_name" {
  value = module.network.vnet_name
}

output "vm_id" {
  value = module.compute.vm_id
}

output "private_ip" {
  value = module.compute.private_ip
}