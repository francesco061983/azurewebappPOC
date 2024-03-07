resource "azurerm_linux_web_app" "frontendapp" {
  name                = "frontend-app"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id = azurerm_service_plan.appserviceplan.id

  site_config {}
}

resource "azurerm_app_service_virtual_network_swift_connection" "frontappsubnetintegrationconnection" {
  app_service_id  = azurerm_linux_web_app.frontendapp.id
  subnet_id       = azurerm_subnet.integrationsubnet.id
}