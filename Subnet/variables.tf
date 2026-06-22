variable "resource_group_name" {
  description = "Resource group for the subnet"
  type        = string
}

variable "virtual_network_name" {
  description = "Virtual network name for the subnet"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes for the subnet"
  type        = list(string)
}
