terraform {
  required_providers {
    azuredevops = {
      source    = "microsoft/azuredevops"
      version   = ">=0.1.0"
    }
  }
}

provider "azuredevops"{
  org_service_url       = var.org
  personal_access_token = var.token
}
  
resource "azuredevops_project" "project" {
  name        = var.projname
  description = var.projdesc
  visibility  = var.visibility
  features = {
    "boards"       = var.boards
    "repositories" = var.repositories
    "pipelines"    = var.pipelines
    "testplans"    = var.testplans
    "artifacts"    = var.artifacts
  }
}
