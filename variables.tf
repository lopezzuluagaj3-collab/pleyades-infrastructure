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

variable "aks_cluster_name" {
  description = "Name of the AKS Managed Cluster."
  type        = string
  default     = "aks-pleyades-dev"
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS API Server."
  type        = string
  default     = "pleyades-aks-dev"
}

variable "aks_node_vm_size" {
  description = "VM SKU for AKS worker nodes."
  type        = string
  default     = "Standard_B2ms"
}

variable "aks_node_count" {
  description = "Initial number of nodes in the default node pool."
  type        = number
  default     = 2
}

variable "aks_min_count" {
  description = "Minimum number of nodes for autoscaling."
  type        = number
  default     = 1
}

variable "aks_max_count" {
  description = "Maximum number of nodes for autoscaling."
  type        = number
  default     = 3
}

variable "tags" {
  description = "Additional tags for platform resources."
  type        = map(string)
  default     = {}
}
