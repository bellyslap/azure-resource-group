provider "azurerm" {
  features {}
}

variable "name" {
  default = "myrg"
}

variable "environment" {
  default = "dev"
}

variable "locations" {
  default = ["westus"]
}

variable "tags" {
  default = {
    "Environment" = "DEV"
    "Version"     = "TBD"
  }
}

module "rg" {
  # source      = "git::https://github.com/bellyslap/azure-resource-group"
  source      = "./../.."
  name        = var.name
  environment = var.environment
  locations   = var.locations
  tags        = var.tags
}
