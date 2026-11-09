# ---------------------------------------------------------
# ArgoCD - Locals
# ---------------------------------------------------------
locals {
  module_name = "argocd"

  default_tags = {
    Module      = local.module_name
    ManagedBy   = "Terraform"
    Environment = var.environment
  }

  tags = merge(local.default_tags, var.tags)
}
