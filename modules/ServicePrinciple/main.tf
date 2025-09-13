data azuread_client_config current {}

resource "azuread_application" "main" {
  display_name = var.sp_name
  owners      = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "main" {
    app_role_assignment_required = true
    application_id = azuread_application.main.application_id
    depends_on = [azuread_application.main]

}

resource "azuread_service_principal_password" "main" {
  service_principal_id = azuread_service_principal.main.id
}