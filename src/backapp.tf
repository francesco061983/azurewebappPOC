resource "azurerm_linux_web_app" "backendapp" {
  name                = "backend-app"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id = azurerm_service_plan.appserviceplan.id

  site_config {}
  
  identity {
    type = "SystemAssigned"
  }
}
