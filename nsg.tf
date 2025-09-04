resource "azurerm_network_security_group" "example" {
  name                = "acceptanceTestSecurityGroup1"
  location            = "East US"
  resource_group_name = "terrform-resources"
  dynamic "security_rule" {
    for_each = {
      ssh  = { port = 22,  priority = 100 }
      http = { port = 80,  priority = 110 }
      https = { port = 443, priority = 120 }
    }
    content {
      name                       = "Allow-${security_rule.key}"
      priority                   = security_rule.value.priority
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = tostring(security_rule.value.port)
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
  tags = {
    environment = "Production"
  }
}

