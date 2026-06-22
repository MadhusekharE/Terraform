variable "nsg_ssh_name" {
  description = "The name of the SSH network security group"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group for the NSG"
  type        = string
}

variable "location" {
  description = "Location for the NSG"
  type        = string
}

variable "tags" {
  description = "Tags for the NSG"
  type        = map(string)
  default     = {}
}
