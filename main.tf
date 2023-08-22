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
subscription_id  =  "${{ secrets.AZURE_SUBSCRIPTION_ID }}"#"e64d2b7e-f9cf-4177-afb5-b4eb654ca3cb"
tenant_id  =  "${{ secrets.AZURE_TENENT_ID }}" #"5461eb53-e0fd-4320-92ff-c6efe1fe91e9"
client_id  =  "${{ secrets.user }}" #"b26d672a-0f97-4334-98bc-fea755e1a435"
client_secret  = "${{ secrets.password }}"  #"EWN8Q~p5Rbf_sDpOKcyGWbB_BZAE_yR48Pdctclo"
  features {}

}



resource "azurerm_resource_group" "rg" {
  name     = "lob-poc-one-rg"
  location = "East US"
}
