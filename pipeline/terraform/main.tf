resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_static_site" "main" {
  name                = var.static_site_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  sku_tier            = "Free"

}

output "static_site_default_hostname" {
  value = azurerm_static_site.main.default_host_name
}
