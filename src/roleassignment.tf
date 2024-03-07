resource "azurerm_role_assignment" "role_assignment_storage" {
  scope                            = azurerm_storage_account.storage_account.id
  role_definition_name             = "Storage Blob Data Contributor"
  principal_id                     = azurerm_linux_web_app.backendapp.identity.0.principal_id
  skip_service_principal_aad_check = true
}