terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
      version = ">=0.1.0"
    }
  }
}

resource "azuredevops_project" "project" {
  name       = var.projname
  description        = var.projdesc
}
