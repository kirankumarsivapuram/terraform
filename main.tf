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
subscription_id  =  ${{ secrets.AZURE_SUBSCRIPTION_ID }}
tenant_id  =  ${{ secrets.AZURE_TENENT_ID }}
client_id  =  ${{ secrets.user }}
client_secret  = ${{ secrets.password }}
  features {}

}



resource "azurerm_resource_group" "rg" {
  name     = "lob-poc-one-rg"
  location = "East US"
}
