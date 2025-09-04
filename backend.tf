terraform {
  backend "azurerm" {
    resource_group_name   = "terrform-resources"
    storage_account_name  = "tfstateaccountowamit23"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}
