# ---------------------------------------------------------
# ArgoCD - Outputs
# ---------------------------------------------------------
output "namespace" {
  description = "The namespace where ArgoCD is installed."
  value       = helm_release.argocd.namespace
}

output "release_name" {
  description = "The name of the Helm release."
  value       = helm_release.argocd.name
}

output "chart_version" {
  description = "The version of the Helm chart deployed."
  value       = helm_release.argocd.version
}

output "status" {
  description = "The status of the Helm release."
  value       = helm_release.argocd.status
}
