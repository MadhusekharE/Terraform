variable "resource_group_name" {
  description = "The resource group for the storage account"
  type        = string
}

variable "location" {
  description = "The location for the storage account"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "account_tier" {
  description = "The account tier for the storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the storage account"
  type        = string
  default     = "LRS"
}

variable "account_kind" {
  description = "The kind of the storage account"
  type        = string
  default     = "StorageV2"
}

variable "access_tier" {
  description = "The access tier for the storage account"
  type        = string
  default     = "Hot"
}

variable "tags" {
  description = "Tags for the storage account"
  type        = map(string)
  default     = {}
}
