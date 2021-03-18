//Mod History
//Initail version by SN; Date: 18/03/2021
//Terraform 0.13 provider install code
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.51.0"
    }
  }
}
// Provider Block
provider "azurerm" {
  # Configuration options
  features {}
}
// Create a resource group
resource "azurerm_resource_group" "p-resource-group" {
  name     = "p-resources"
  location = var.location_name
  }
// Create a data factory within the resource group
resource "azurerm_data_factory" "p-df" {
  name                = "p-Data-Factory"
  location            = azurerm_resource_group.p-resource-group.location
  resource_group_name = azurerm_resource_group.p-resource-group.name
}
