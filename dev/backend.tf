terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "tfdevbackend25shra"
    container_name      = "tfstate"
    key                 = "dev.terraform.tfstate"
    subscription_id       = "287af259-8e7d-4ff7-b511-52679e90db97"
    // use_azuread_auth      = true
  }
}

provider "azurerm" {
  features {}
}