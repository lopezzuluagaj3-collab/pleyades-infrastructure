# ---------------------------------------------------------
# Networking - Outputs
# ---------------------------------------------------------
output "vnet_id" {
  description = "The ID of the Virtual Network."
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "The name of the Virtual Network."
  value       = azurerm_virtual_network.this.name
}

output "vnet_address_space" {
  description = "The address space of the Virtual Network."
  value       = azurerm_virtual_network.this.address_space
}

output "aks_subnet_id" {
  description = "The ID of the AKS Subnet."
  value       = azurerm_subnet.aks.id
}

output "aks_subnet_name" {
  description = "The name of the AKS Subnet."
  value       = azurerm_subnet.aks.name
}

output "aks_nsg_id" {
  description = "The ID of the AKS Network Security Group."
  value       = azurerm_network_security_group.aks.id
}
