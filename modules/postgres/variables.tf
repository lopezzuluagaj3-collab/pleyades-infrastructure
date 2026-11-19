# ---------------------------------------------------------
# PostgreSQL Flexible Server - Variables
# ---------------------------------------------------------
variable "resource_group_name" {
  description = "The name of the Resource Group where PostgreSQL Flexible Server will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region for the PostgreSQL Flexible Server."
  type        = string
  default     = "centralus"
}

variable "server_name" {
  description = "Name of the Azure Database for PostgreSQL Flexible Server."
  type        = string
}

variable "environment" {
  description = "Deployment environment tier (dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "postgres_version" {
  description = "The PostgreSQL engine version."
  type        = string
  default     = "16"
}

variable "delegated_subnet_id" {
  description = "The resource ID of the delegated subnet for PostgreSQL Flexible Server (optional)."
  type        = string
  default     = null
}

variable "private_dns_zone_id" {
  description = "The resource ID of the Private DNS Zone for PostgreSQL Flexible Server (optional)."
  type        = string
  default     = null
}

variable "sku_name" {
  description = "The SKU Name for the PostgreSQL Flexible Server (e.g., B_Standard_B1ms, GP_Standard_D2ds_v5)."
  type        = string
  default     = "B_Standard_B1ms"
}

variable "storage_mb" {
  description = "Storage capacity in megabytes (minimum 32768 MB / 32 GB)."
  type        = number
  default     = 32768
}

variable "backup_retention_days" {
  description = "Backup retention days for the Flexible Server (7 to 35 days)."
  type        = number
  default     = 7
}

variable "administrator_login" {
  description = "The administrator login username for PostgreSQL."
  type        = string
  default     = "pleyades_admin"
}

variable "database_name" {
  description = "Name of the initial root database to create."
  type        = string
  default     = "pleyades_db"
}

variable "tags" {
  description = "A mapping of tags to assign to the PostgreSQL resources."
  type        = map(string)
  default     = {}
}
