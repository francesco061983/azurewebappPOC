resource "azurerm_service_plan" "appserviceplan" {
  name                    = "${var.environment}-appserviceplan"
  resource_group_name     = "azurerm_resource_group.rg.name"
  location                = "azurerm_resource_group.rg.location"
  os_type                 = "Linux"
  sku_name                = "P1v2"
  reserved                = true
}

#reserved true for linux