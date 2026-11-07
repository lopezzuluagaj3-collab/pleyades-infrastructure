# ---------------------------------------------------------
# Root - Variables
# ---------------------------------------------------------
variable "environment" {
  description = "Deployment environment (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region where the resources will be created."
  type        = string
  default     = "eastus2"
}

variable "resource_group_name" {
  description = "Name of the main Resource Group for the platform."
  type        = string
  default     = "rg-pleyades-dev"
}

variable "tags" {
  description = "Additional tags for platform resources."
  type        = map(string)
  default     = {}
}
