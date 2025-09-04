resource "azurerm_subnet" "example" {
  for_each             = var.subnets
  name                 = each.key
  resource_group_name  = "terrform-resources"
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = each.value.address_prefixes
}

