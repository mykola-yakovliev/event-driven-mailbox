terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.9.0"
    }
  }

  required_version = ">= 1.7.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "event_driven_mailbox_rg" {
  name     = var.resource_group_name
  location = var.location
}
