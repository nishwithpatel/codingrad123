resource "azurerm_resource_group" "rg1" {
  name     = var.rgname1
  location = var.location
  tags = {
    Env   = var.env
    Batch = var.batch
  }
}