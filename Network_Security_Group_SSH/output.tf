output "nsg_ssh_name" {
  value = azurerm_network_security_group.nsg.name
}

output "nsg_ssh_id" {
  value = azurerm_network_security_group.nsg.id
}

output "nsg_ssh_location" {
  value = azurerm_network_security_group.nsg.location
}

output "nsg_ssh_resource_group_name" {
  value = azurerm_network_security_group.nsg.resource_group_name
}

output "nsg_ssh_security_rule" {
  value = azurerm_network_security_group.nsg.security_rule
}
