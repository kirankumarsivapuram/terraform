variable "resource_group_name" {
  type        = string
  description = "RG name in Azure"
}

variable "location" {
  type        = string
  description = "Resources location in Azure"
}

variable "cluster_name" {
  type        = string
  description = "AKS name in Azure"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}

variable "system_node_count" {
  type        = number
  description = "Number of AKS worker nodes"
}

variable "acr_name" {
  type        = string
  description = "ACR name"
 
}

variable "role_definition_name" {
  type        = string
  description = "Role Definition Name"
}
variable "azurerm_container_registry_sku" {
  type        = string
  description = "ACR SKU"
}

variable "azurerm_container_registry_Admin_Enabled" {
  type        = string
  description = "ACR Admin Enabled"
}
variable "Azure_Role_Assignment_skip_service_principal_aad_check" {
  type        = string
  description = "skip service principal aad check"
}
variable "AKS_Default_Node_pool_Name" {
  type        = string
  description = "Default node pool name"
  
}
 

variable "AKS_Default_Node_pool_VM_Size" {
  type        = string
  description = "Default node pool vm size"
}

variable "AKS_Default_Node_pool_enable_auto_scale" {
  type        = string
  description = "Default node pool enable auto scale"
}

variable "Azure_Vnet_Name" {
  type        = string
  description = "Virtual Network name"
}

variable "Azure_Vnet_address_space" {
  type        = string
  description = "Virtual Network adress space"
}

variable "Azure_Subnet_Name" {
  type        = string
  description = "Virtual Network sub net name"
}

variable "Azure_Subnet_Name_address_prefixes" {
  type        = string
  description = "Virtual Network subnet address prefixes "
}

