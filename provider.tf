terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.21.1"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = local.subscription_id
}
