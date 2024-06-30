# main.tf

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_app_service_plan" "main" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "main" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  app_service_plan_id = azurerm_app_service_plan.main.id

  site_config {
        linux_fx_version = "DOTNETCORE|3.1"  # Using .NET Core 3.1 runtime
  }

  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
  }
}