# ---------------------------------------------------------
# AKS - Main
# ---------------------------------------------------------
resource "azurerm_kubernetes_cluster" "this" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  oidc_issuer_enabled       = true
  workload_identity_enabled = true

  default_node_pool {
    name                = "system"
    vm_size             = var.node_vm_size
    vnet_subnet_id      = var.vnet_subnet_id
    enable_auto_scaling = var.enable_auto_scaling
    node_count          = var.node_count
    min_count           = var.min_count
    max_count           = var.max_count
    os_disk_size_gb     = 30
    tags                = local.tags
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin      = "azure"
    network_plugin_mode = "overlay"
    network_data_plane  = "cilium"
    network_policy      = "cilium"
  }

  tags = local.tags
}
