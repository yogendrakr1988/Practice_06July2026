terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "hubtest"
    storage_account_name = "julystorage11"
    container_name       = "julycontainer11"
    key                  = "dev.tfstate"

  }
}

provider "azurerm" {
  features {}
}