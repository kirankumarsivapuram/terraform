terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"

    }
}
  

  

  
}

provider "azurerm" {
subscription_id  =  var.subscription_id
tenant_id  =  var.tenant_id
client_id  =  var.client_id
client_secret  = var.client_secret
use_oidc = true
  features {}

}



resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location =var.resource_group_location
}

