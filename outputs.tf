output "purview_accounts" {
  description = "All purview_account resources"
  value       = azurerm_purview_account.purview_accounts
  sensitive   = true
}
output "purview_accounts_atlas_kafka_endpoint_primary_connection_string" {
  description = "List of atlas_kafka_endpoint_primary_connection_string values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.atlas_kafka_endpoint_primary_connection_string]
  sensitive   = true
}
output "purview_accounts_atlas_kafka_endpoint_secondary_connection_string" {
  description = "List of atlas_kafka_endpoint_secondary_connection_string values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.atlas_kafka_endpoint_secondary_connection_string]
  sensitive   = true
}
output "purview_accounts_aws_external_id" {
  description = "List of aws_external_id values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.aws_external_id]
}
output "purview_accounts_catalog_endpoint" {
  description = "List of catalog_endpoint values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.catalog_endpoint]
}
output "purview_accounts_guardian_endpoint" {
  description = "List of guardian_endpoint values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.guardian_endpoint]
}
output "purview_accounts_identity" {
  description = "List of identity values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.identity]
}
output "purview_accounts_location" {
  description = "List of location values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.location]
}
output "purview_accounts_managed_event_hub_enabled" {
  description = "List of managed_event_hub_enabled values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.managed_event_hub_enabled]
}
output "purview_accounts_managed_resource_group_name" {
  description = "List of managed_resource_group_name values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.managed_resource_group_name]
}
output "purview_accounts_managed_resources" {
  description = "List of managed_resources values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.managed_resources]
}
output "purview_accounts_name" {
  description = "List of name values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.name]
}
output "purview_accounts_public_network_enabled" {
  description = "List of public_network_enabled values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.public_network_enabled]
}
output "purview_accounts_resource_group_name" {
  description = "List of resource_group_name values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.resource_group_name]
}
output "purview_accounts_scan_endpoint" {
  description = "List of scan_endpoint values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.scan_endpoint]
}
output "purview_accounts_tags" {
  description = "List of tags values across all purview_accounts"
  value       = [for k, v in azurerm_purview_account.purview_accounts : v.tags]
}

