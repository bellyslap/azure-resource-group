module "rg_names" {
  source      = "git::https://github.com/bellyslap/terraform-resource-name"
  name        = var.name
  separator   = var.separator
  environment = var.environment
  locations   = var.locations
}

module "tags" {
  source = "git::https://github.com/bellyslap/terraform-tags"
  tags   = var.tags
}

resource "azurerm_resource_group" "rgs" {
  count    = length(module.rg_names.names)
  name     = module.rg_names.names[count.index]
  location = var.locations[count.index]
  tags     = module.tags.tags
}
