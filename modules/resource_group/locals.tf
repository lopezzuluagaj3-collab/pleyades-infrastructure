# Resource Group - Locals

locals {
  default_tags = {
    Project     = "Pleyades"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Module      = "resource_group"
  }

  tags = merge(local.default_tags, var.tags)
}
