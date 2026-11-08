terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.117.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-pleyades-tfstate"
    storage_account_name = "stpleyadesstate"
    container_name       = "tfstate"
    key                  = "infrastructure.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

# ---------------------------------------------------------
# 1. Resource Group Module
# ---------------------------------------------------------
module "resource_group" {
  source      = "./modules/resource_group"
  name        = var.resource_group_name
  location    = var.location
  environment = local.environment
  tags        = merge(local.default_tags, var.tags)
}

# ---------------------------------------------------------
# 2. Networking Module (VNet & Subnet)
# ---------------------------------------------------------
module "networking" {
  source              = "./modules/networking"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  vnet_name           = "vnet-${local.project_name}-${local.environment}"
  address_space       = var.vnet_address_space
  aks_subnet_name     = "snet-aks-${local.environment}"
  aks_subnet_prefixes = var.aks_subnet_prefixes
  environment         = local.environment
  tags                = merge(local.default_tags, var.tags)
}

# ---------------------------------------------------------
# 3. AKS Managed Cluster Module (Cilium eBPF & Workload Identity)
# ---------------------------------------------------------
module "aks" {
  source              = "./modules/aks"
  cluster_name        = var.aks_cluster_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  dns_prefix          = var.aks_dns_prefix
  vnet_subnet_id      = module.networking.aks_subnet_id
  node_vm_size        = var.aks_node_vm_size
  node_count          = var.aks_node_count
  min_count           = var.aks_min_count
  max_count           = var.aks_max_count
  environment         = local.environment
  tags                = merge(local.default_tags, var.tags)
}
