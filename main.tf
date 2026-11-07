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
