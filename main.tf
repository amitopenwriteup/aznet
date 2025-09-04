resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  resource_group_name = "terrform-resources" 
  location            = "East US" 
  address_space       = var.vnet_address_space
  tags                = var.tags
}
