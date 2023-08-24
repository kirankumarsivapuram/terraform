terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"

    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
  
}

provider "azurerm" {
subscription_id  =  var.subscription_id
tenant_id  =  var.tenant_id
client_id  =  var.client_id
client_secret  = var.client_secret
  features {}

}



resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location =var.resource_group_location
}
