// provider "azurerm" {
//   version = "=2.39.0"
//   features {}
// }

provider "azurerm" {
subscription_id  =  "e64d2b7e-f9cf-4177-afb5-b4eb654ca3cb"
tenant_id  =  "5461eb53-e0fd-4320-92ff-c6efe1fe91e9"
client_id  =  "b26d672a-0f97-4334-98bc-fea755e1a435"
client_secret  =  "EWN8Q~p5Rbf_sDpOKcyGWbB_BZAE_yR48Pdctclo"
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.78.0"
    }
  }
}
