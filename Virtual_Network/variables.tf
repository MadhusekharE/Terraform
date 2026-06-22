variable "resource_group_name" {
  description = "Name of the resource group for the virtual network"
  type        = string
}

variable "location" {
  description = "Location for the virtual network"
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "tags" {
  description = "Tags for the virtual network"
  type        = map(string)
  default     = {}
}
