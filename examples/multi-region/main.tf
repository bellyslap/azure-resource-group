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
  default = ["westus", "westus2"]
}

variable "tags" {
  default = {
    "Environment" = "DEV"
    "Version"     = "TBD"
  }
}

module "rgs" {
  # source      = "git::https://github.com/bellyslap/azure-resource-group"
  source      = "./../.."
  name        = var.name
  environment = var.environment
  locations   = var.locations
  tags        = var.tags
}
