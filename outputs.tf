output "rgs" {
  value = [
    for rg in azurerm_resource_group.rgs :
    {
      id       = rg.id
      name     = rg.name
      location = rg.location
    }
  ]
}
