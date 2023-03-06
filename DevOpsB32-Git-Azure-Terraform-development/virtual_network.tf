resource "azurerm_virtual_network" "rg001-vnet1" {
  name                = "${azurerm_resource_group.rg1.name}-vnet1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = [var.vnet1_cidr]

  tags = {
    Env   = var.env
    Batch = var.batch
  }
}

resource "azurerm_virtual_network" "rg001-vnet2" {
  name                = "${azurerm_resource_group.rg1.name}-vnet2"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = [var.vnet2_cidr]

  tags = {
    Env   = var.env
    Batch = var.batch
  }
}

resource "azurerm_subnet" "subnet-1" {
  name                 = "${azurerm_resource_group.rg1.name}-Subnet-1"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.rg001-vnet1.name
  address_prefixes     = ["10.32.1.0/24"]
}

resource "azurerm_subnet" "subnet-2" {
  name                 = "${azurerm_resource_group.rg1.name}-Subnet-2"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.rg001-vnet1.name
  address_prefixes     = ["10.32.2.0/24"]
}

resource "azurerm_subnet" "subnet-3" {
  name                 = "${azurerm_resource_group.rg1.name}-Subnet-3"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.rg001-vnet1.name
  address_prefixes     = ["10.32.3.0/24"]
}

