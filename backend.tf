terraform{
  backend "azurerm" {
    resource_group_name  = "devops"
    storage_account_name = "filebased"
    container_name       = "statefile"
    key                  = "terraform.tfstate"
    use_oidc = true
  }
}
