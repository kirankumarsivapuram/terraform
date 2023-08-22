resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_role_assignment" "role_acrpull" {
  scope                            = azurerm_container_registry.acr.id
  role_definition_name             = var.role_definition_name
  principal_id                     = azurerm_kubernetes_cluster.aks.kubelet_identity.0.object_id
  skip_service_principal_aad_check = var.Azure_Role_Assignment_skip_service_principal_aad_check
}

resource "azurerm_virtual_network" "virtualnetwork" {
  name = var.Azure_Vnet_Name
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  address_space = [var.Azure_Vnet_address_space]
}

resource "azurerm_subnet" "virtualsubnet" {
  name = var.Azure_Subnet_Name
  virtual_network_name = azurerm_virtual_network.virtualnetwork.name
  resource_group_name = azurerm_resource_group.rg.name
  address_prefixes = [var.Azure_Subnet_Name_address_prefixes]
  
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  sku                 = var.azurerm_container_registry_sku
  admin_enabled       = var.azurerm_container_registry_Admin_Enabled
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  kubernetes_version  = var.kubernetes_version
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.cluster_name
  
  default_node_pool {
    name                = var.AKS_Default_Node_pool_Name
    node_count          = var.system_node_count
    vm_size             = var.AKS_Default_Node_pool_VM_Size
    type                = "VirtualMachineScaleSets"
    node_labels = {
      
      "nodepool-type" = "system"
      "environment"   = "prod"
      "nodepoolos"    = "linux"
    }
    os_disk_size_gb = "30"
    #availability_zones  = [1, 2, 3]
    enable_auto_scaling = var.AKS_Default_Node_pool_enable_auto_scale
    vnet_subnet_id = azurerm_subnet.virtualsubnet.id
  }
 
  identity {
    type = "SystemAssigned"
  }
  
/*
  network_profile {
    load_balancer_sku = "Standard"
    network_plugin    = "kubenet" # CNI
  }*/
}
