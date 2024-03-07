resource "azurerm_storage_account" "storage_account" {
  name                      = "${var.environment}-sa"
  location                  = "azurerm_resource_group.rg.location"
  account_replication_type  = "LRS"
  account_tier              = "Standard"
  account_kind              = "StorageV2"
  min_tls_version           = "TLS1_2"
  enable_https_traffic_only = true
  resource_group_name       = "azurerm_resource_group.rg.name"
  
  network_rules {

    default_action             = "Deny"
    virtual_network_subnet_ids = ["${azurerm_subnet.endpointsubnet.id}"]
  }
}
