# ---------------------------------------------------------
# PostgreSQL Flexible Server - Locals
# ---------------------------------------------------------
locals {
  default_tags = {
    Project     = "Pleyades"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Module      = "postgres"
  }

  tags = merge(local.default_tags, var.tags)
}
