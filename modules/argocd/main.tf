# ---------------------------------------------------------
# ArgoCD - Main (Helm Release)
# ---------------------------------------------------------
resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = var.chart_version
  namespace        = var.namespace
  create_namespace = true
  timeout          = 600
  wait             = true

  # Optimización de recursos para ambiente dev (Single Replica)
  set {
    name  = "global.redis.ha.enabled"
    value = "false"
  }

  set {
    name  = "controller.replicas"
    value = "1"
  }

  set {
    name  = "server.replicas"
    value = "1"
  }

  set {
    name  = "repoServer.replicas"
    value = "1"
  }

  set {
    name  = "applicationSet.replicaCount"
    value = "1"
  }

  set {
    name  = "dex.enabled"
    value = "false"
  }

  set {
    name  = "server.service.type"
    value = var.server_service_type
  }

  set {
    name  = "server.extraArgs"
    value = "{--insecure}"
  }
}
