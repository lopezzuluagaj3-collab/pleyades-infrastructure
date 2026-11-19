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

output "postgres_subnet_id" {
  description = "The ID of the delegated PostgreSQL Subnet."
  value       = azurerm_subnet.postgres.id
}

output "postgres_subnet_name" {
  description = "The name of the delegated PostgreSQL Subnet."
  value       = azurerm_subnet.postgres.name
}

output "postgres_private_dns_zone_id" {
  description = "The ID of the Private DNS Zone for PostgreSQL Flexible Server."
  value       = azurerm_private_dns_zone.postgres.id
}

output "postgres_private_dns_zone_name" {
  description = "The name of the Private DNS Zone for PostgreSQL Flexible Server."
  value       = azurerm_private_dns_zone.postgres.name
}

output "postgres_private_dns_zone_link_id" {
  description = "The ID of the Private DNS Zone VNet Link for PostgreSQL."
  value       = azurerm_private_dns_zone_virtual_network_link.postgres.id
}
