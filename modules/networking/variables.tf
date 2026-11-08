# ---------------------------------------------------------
# Networking - Variables
# ---------------------------------------------------------
variable "resource_group_name" {
  description = "The name of the Resource Group where the network will be created."
  type        = string
}

variable "location" {
  description = "The Azure region for the network."
  type        = string
}

variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string
}

variable "address_space" {
  description = "The address space used by the Virtual Network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "aks_subnet_name" {
  description = "The name of the Subnet dedicated for AKS nodes and pods."
  type        = string
  default     = "snet-aks-dev"
}

variable "aks_subnet_prefixes" {
  description = "The address prefixes for the AKS Subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "environment" {
  description = "Environment tier (dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "A mapping of tags to assign to the network resources."
  type        = map(string)
  default     = {}
}
