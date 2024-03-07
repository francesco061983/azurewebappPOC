terraform {
  backend "azurerm" {
    storage_account_name = "tfstate"
    container_name       = "prod-tfstate"
    key                  = "prod.terraform.tfstate"
    resource_group_name  = "rg"
  }
}
