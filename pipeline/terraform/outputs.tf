# outputs.tf

output "app_service_default_site_hostname" {
  value = azurerm_app_service.main.default_site_hostname
}
