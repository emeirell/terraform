terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #source = "microsoft/azuredevops"
      #version = ">=0.1.0"
      version = "3.33.0"
      org_service_url = "https://dev.azure.com/emeirelles/"
      personal_access_token = var.token
    }
  }
}

resource "azuredevops_project" "project" {
  name       = var.projname
  description        = var.projdesc
}
