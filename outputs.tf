# ---------------------------------------------------------
# Root - Outputs
# ---------------------------------------------------------

# Resource Group Outputs
output "resource_group_name" {
  description = "The name of the provisioned Azure Resource Group."
  value       = module.resource_group.name
}

output "resource_group_id" {
  description = "The ID of the provisioned Azure Resource Group."
  value       = module.resource_group.id
}

output "resource_group_location" {
  description = "The Azure region of the provisioned Resource Group."
  value       = module.resource_group.location
}

# Networking Outputs
output "vnet_id" {
  description = "The ID of the Virtual Network."
  value       = module.networking.vnet_id
}

output "vnet_name" {
  description = "The name of the Virtual Network."
  value       = module.networking.vnet_name
}

output "vnet_address_space" {
  description = "The address space of the Virtual Network."
  value       = module.networking.vnet_address_space
}

output "aks_subnet_id" {
  description = "The ID of the Subnet dedicated for AKS."
  value       = module.networking.aks_subnet_id
}

output "aks_subnet_name" {
  description = "The name of the Subnet dedicated for AKS."
  value       = module.networking.aks_subnet_name
}

output "aks_nsg_id" {
  description = "The ID of the AKS Network Security Group."
  value       = module.networking.aks_nsg_id
}
