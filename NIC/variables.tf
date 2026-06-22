variable "nic_name" {
  description = "The name of the network interface"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group for the network interface"
  type        = string
}

variable "location" {
  description = "The Azure location for the network interface"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the network interface"
  type        = string
}

variable "public_ip_id" {
  description = "Public IP ID to assign to the network interface"
  type        = string
  default     = null
}

variable "ip_configuration_name" {
  description = "The name of the IP configuration"
  type        = string
  default     = "internal"
}

variable "private_ip_allocation" {
  description = "Private IP allocation method for the NIC"
  type        = string
  default     = "Dynamic"
}

variable "tags" {
  description = "Tags for the network interface"
  type        = map(string)
  default     = {}
}
