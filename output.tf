# Output VNet name
output "vnet_name" {
  value = azurerm_virtual_network.example.name
}

# Output VNet ID
output "vnet_id" {
  value = azurerm_virtual_network.example.id
}

# Output subnet names
output "subnet_names" {
  value = [for s in azurerm_subnet.example : s.name]
}

# Output subnet IDs
output "subnet_ids" {
  value = [for s in azurerm_subnet.example : s.id]
}

