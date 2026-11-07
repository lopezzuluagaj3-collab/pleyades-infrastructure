# ---------------------------------------------------------
# Resource Group - Outputs
# ---------------------------------------------------------
output "id" {
  description = "The ID of the created Resource Group."
  value       = azurerm_resource_group.this.id
}

output "name" {
  description = "The name of the created Resource Group."
  value       = azurerm_resource_group.this.name
}

output "location" {
  description = "The Azure region of the created Resource Group."
  value       = azurerm_resource_group.this.location
}
