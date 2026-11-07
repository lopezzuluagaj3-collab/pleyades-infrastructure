# ---------------------------------------------------------
# Root - Locals
# ---------------------------------------------------------
locals {
  project_name = "pleyades"
  environment  = var.environment

  default_tags = {
    Project     = "Pleyades"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Repository  = "pleyades-infrastructure"
  }
}
