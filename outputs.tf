# ---------------------------------------------------------
# Root - Outputs
# ---------------------------------------------------------
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
