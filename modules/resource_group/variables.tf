# ---------------------------------------------------------
# Resource Group - Variables
# ---------------------------------------------------------
variable "name" {
  description = "The name of the Azure Resource Group."
  type        = string
}

variable "location" {
  description = "The Azure region where the Resource Group will be created."
  type        = string
  default     = "eastus2"
}

variable "environment" {
  description = "Environment tier (dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
