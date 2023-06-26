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
  name     = "database-rg"
  location = "West Europe"
}

resource "azurerm_mssql_server" "example" {
  name                         = "mssqlserver"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "dbadmin"
  administrator_login_password = "VMware1!VMware2!"
  minimum_tls_version          = "1.2"
  public_network_access_enabled = "false"

  tags = {
    environment = "production"
  }
}
