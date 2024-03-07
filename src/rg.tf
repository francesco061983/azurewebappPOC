# resoursce group configuration
resource "azurerm_resource_group" "rg" {
  name     = "${var.environment}-rg"
  location = "${var.location}"

  tags = {
    EnvName       = "${var.environment}"
    ResourcesFor  = "cloud_webapp_infrastructure_POC"
  }
}
