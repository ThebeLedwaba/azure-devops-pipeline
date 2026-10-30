output "azure_container_registry_server" {
  value       = azurerm_container_registry.acr.login_server
  description = "ACR Login Server Endpoint"
}

output "web_app_url" {
  value       = "https://${azurerm_linux_web_app.app.default_hostname}"
  description = "Live Web App Public URL"
}
