variable "vm_name" {
  description = "Name of the Linux virtual machine"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the VM will be created"
  type        = string
}

variable "location" {
  description = "The Azure location where the VM will be deployed"
  type        = string
}

variable "network_interface_ids" {
  description = "List of network interface IDs to attach to the VM"
  type        = list(string)
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "vm_username" {
  description = "The admin username for the VM"
  type        = string
  default     = "azureadmin"
}

variable "vm_password" {
  description = "The admin password for the VM"
  type        = string
  sensitive   = true
}

variable "os_disk_storage_account_type" {
  description = "Storage account type for the OS disk"
  type        = string
  default     = "Standard_LRS"
}

variable "source_image_reference" {
  description = "The source image reference for the VM"
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

variable "tags" {
  description = "Tags to apply to the VM"
  type        = map(string)
  default     = {}
}
