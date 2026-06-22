variable "public_ip_name" {
  description = "The name of the public IP address"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group for the public IP address"
  type        = string
}

variable "location" {
  description = "Location for the public IP address"
  type        = string
}

variable "allocation_method" {
  description = "The allocation method for the public IP address"
  type        = string
  default     = "Static"
}

variable "sku" {
  description = "The SKU for the public IP address"
  type        = string
  default     = "Basic"
}
