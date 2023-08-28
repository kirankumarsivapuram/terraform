variable "resource_group_name" {
  type        = string
  description = "Resource Group name in Azure"
}

variable "resource_group_location" {
  type        = string
  description = "Resource Group location in Azure"
}

variable "subscription_id" {
  type        = string
  description = "Subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID"
}

variable "client_id" {
  type        = string
  description = "Client ID"
}

variable "client_secret" {
  type        = string
  description = "ClientSecret"
}
variable "backend_resource_group_name" {
  type        = string
  description = "Backend_Resource_Group_Name"
}
variable "backend_storage_account_name" {
  type        = string
  description = "Backend_Storage_Account_Name"
}
variable "backend_container_name" {
  type        = string
  description = "Backend_Container_Name"
}
variable "backend_tfstatefile_name" {
  type        = string
  description = "Backend_TfStatefile_name"
}
