# ---------------------------------------------------------
# PostgreSQL Flexible Server - Outputs
# ---------------------------------------------------------
output "server_id" {
  description = "The ID of the PostgreSQL Flexible Server."
  value       = azurerm_postgresql_flexible_server.this.id
}

output "server_name" {
  description = "The name of the PostgreSQL Flexible Server."
  value       = azurerm_postgresql_flexible_server.this.name
}

output "fqdn" {
  description = "The fully qualified domain name (FQDN) of the PostgreSQL Flexible Server."
  value       = azurerm_postgresql_flexible_server.this.fqdn
}

output "administrator_login" {
  description = "The master administrator username for the PostgreSQL Flexible Server."
  value       = azurerm_postgresql_flexible_server.this.administrator_login
}

output "administrator_password" {
  description = "The generated administrator password for the PostgreSQL Flexible Server."
  value       = random_password.admin_password.result
  sensitive   = true
}

output "database_name" {
  description = "The name of the initial root database."
  value       = azurerm_postgresql_flexible_server_database.this.name
}

output "database_id" {
  description = "The ID of the initial root database."
  value       = azurerm_postgresql_flexible_server_database.this.id
}
