# ---------------------------------------------------------
# AKS - Locals
# ---------------------------------------------------------
locals {
  default_tags = {
    Project     = "Pleyades"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Module      = "aks"
  }

  tags = merge(local.default_tags, var.tags)
}
