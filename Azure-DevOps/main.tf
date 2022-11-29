terraform {
  required_providers {
    azuredevops= {
      source = "microsoft/azuredevops"
      version = ">=0.1.0"
    }
  }
}

provider "azuredevops"{
  org_service_url = "https://dev.azure.com/emeirelles/"
  personal_access_token = var.token
}
  
resource "azuredevops_project" "project" {
  name       = var.projname
  description        = var.projdesc
}
