# ---------------------------------------------------------
# AKS - Variables
# ---------------------------------------------------------
variable "cluster_name" {
  description = "The name of the AKS Managed Cluster."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group."
  type        = string
}

variable "location" {
  description = "The Azure region for the AKS cluster."
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix specified when creating the managed cluster."
  type        = string
  default     = "pleyades-aks"
}

variable "vnet_subnet_id" {
  description = "The ID of the Subnet where the AKS node pool will reside."
  type        = string
}

variable "kubernetes_version" {
  description = "Version of Kubernetes specified when creating the AKS cluster."
  type        = string
  default     = null
}

variable "node_vm_size" {
  description = "The SKU which should be used for the Virtual Machines in the default node pool."
  type        = string
  default     = "Standard_B2ms"
}

variable "node_count" {
  description = "The initial number of nodes in the default node pool."
  type        = number
  default     = 2
}

variable "min_count" {
  description = "The minimum number of nodes for auto-scaling."
  type        = number
  default     = 1
}

variable "max_count" {
  description = "The maximum number of nodes for auto-scaling."
  type        = number
  default     = 3
}

variable "enable_auto_scaling" {
  description = "Should the Kubernetes Auto Scaler be enabled for the default node pool?"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment tier (dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "A mapping of tags to assign to the AKS cluster."
  type        = map(string)
  default     = {}
}
