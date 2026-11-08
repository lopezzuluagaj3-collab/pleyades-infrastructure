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

variable "vnet_address_space" {
  description = "The address space used by the Virtual Network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "aks_subnet_prefixes" {
  description = "The address prefixes for the AKS Subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "tags" {
  description = "Additional tags for platform resources."
  type        = map(string)
  default     = {}
}
