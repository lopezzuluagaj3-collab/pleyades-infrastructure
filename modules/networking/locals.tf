# ---------------------------------------------------------
# Networking - Locals
# ---------------------------------------------------------
locals {
  default_tags = {
    Project     = "Pleyades"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Module      = "networking"
  }

  tags = merge(local.default_tags, var.tags)
}
