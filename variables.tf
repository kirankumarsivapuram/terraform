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