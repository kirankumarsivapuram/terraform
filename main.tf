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
  backend "azurerm" {
    resource_group_name  = "devops"
    storage_account_name = "filebased"
    container_name       = "statefile"
    key                  =  "terraform.tfstate" #"bbZ8tITc2+x8M3PLPPSvhminrYNc9Sd0Nr0BCdWBgdA7GY0eVvML3WZAxOYKGo1AMh450QxvhSozUSx1EnQYLg=="
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
