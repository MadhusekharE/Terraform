output "nic_id" {
  value = azurerm_network_interface.nic.id
}

output "nic_name" {
  value = azurerm_network_interface.nic.name
}

output "nic_private_ip" {
  value = azurerm_network_interface.nic.ip_configuration[0].private_ip_address
}

output "nic_public_ip_id" {
  value = azurerm_network_interface.nic.ip_configuration[0].public_ip_address_id
}

output "nic_subnet_id" {
  value = azurerm_network_interface.nic.ip_configuration[0].subnet_id
}

output "nic_location" {
  value = azurerm_network_interface.nic.location
}
