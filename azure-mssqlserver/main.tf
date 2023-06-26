terraform {
  required_providers {
    azurerm = {
      source    = "hashicorp/azurerm"
      version   = "3.62.1"
    }
  }
}
provider "azurerm" {
  # Configuration options
}

resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_mssql_server" "example" {
  name                         = var.servername
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = var.version
  administrator_login          = var.adminlogin
  administrator_login_password = var.adminpasswd
  minimum_tls_version          = var.tlsver
  public_network_access_enabled = var.pub

  tags = {
    environment = "production"
  }
}
