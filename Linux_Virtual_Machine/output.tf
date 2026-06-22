output "linux_virtual_machine_id" {
  value = azurerm_linux_virtual_machine.linux_vm.id
}

output "linux_virtual_machine_name" {
  value = azurerm_linux_virtual_machine.linux_vm.name
}

output "linux_virtual_machine_size" {
  value = azurerm_linux_virtual_machine.linux_vm.size
}

output "linux_virtual_machine_location" {
  value = azurerm_linux_virtual_machine.linux_vm.location
}

output "linux_virtual_machine_resource_group_name" {
  value = azurerm_linux_virtual_machine.linux_vm.resource_group_name
}

output "linux_virtual_machine_os_disk_name" {
  value = azurerm_linux_virtual_machine.linux_vm.os_disk[0].name
}
