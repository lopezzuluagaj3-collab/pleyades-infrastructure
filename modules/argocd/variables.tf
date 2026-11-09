# ---------------------------------------------------------
# ArgoCD - Variables
# ---------------------------------------------------------
variable "namespace" {
  description = "The Kubernetes namespace where ArgoCD will be installed."
  type        = string
  default     = "argocd"
}

variable "chart_version" {
  description = "The version of the ArgoCD Helm chart to install."
  type        = string
  default     = "7.7.16"
}

variable "environment" {
  description = "Environment tier (dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "server_service_type" {
  description = "Type of Kubernetes Service for the ArgoCD server (ClusterIP, LoadBalancer, NodePort)."
  type        = string
  default     = "ClusterIP"
}

variable "tags" {
  description = "A mapping of tags to assign to resources."
  type        = map(string)
  default     = {}
}
