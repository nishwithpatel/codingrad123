terraform {
  backend "azurerm" {
    resource_group_name  = "rg001"
    storage_account_name = "devopsb32tfbackend"
    container_name       = "tfstate"
    key                  = "devopsb32.tfstate"
  }
}
