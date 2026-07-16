output "purview_accounts_id" {
  description = "Map of id values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "purview_accounts_atlas_kafka_endpoint_primary_connection_string" {
  description = "Map of atlas_kafka_endpoint_primary_connection_string values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.atlas_kafka_endpoint_primary_connection_string if v.atlas_kafka_endpoint_primary_connection_string != null && length(v.atlas_kafka_endpoint_primary_connection_string) > 0 }
  sensitive   = true
}
output "purview_accounts_atlas_kafka_endpoint_secondary_connection_string" {
  description = "Map of atlas_kafka_endpoint_secondary_connection_string values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.atlas_kafka_endpoint_secondary_connection_string if v.atlas_kafka_endpoint_secondary_connection_string != null && length(v.atlas_kafka_endpoint_secondary_connection_string) > 0 }
  sensitive   = true
}
output "purview_accounts_aws_external_id" {
  description = "Map of aws_external_id values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.aws_external_id if v.aws_external_id != null && length(v.aws_external_id) > 0 }
}
output "purview_accounts_catalog_endpoint" {
  description = "Map of catalog_endpoint values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.catalog_endpoint if v.catalog_endpoint != null && length(v.catalog_endpoint) > 0 }
}
output "purview_accounts_guardian_endpoint" {
  description = "Map of guardian_endpoint values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.guardian_endpoint if v.guardian_endpoint != null && length(v.guardian_endpoint) > 0 }
}
output "purview_accounts_identity" {
  description = "Map of identity values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "purview_accounts_location" {
  description = "Map of location values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.location if v.location != null && length(v.location) > 0 }
}
output "purview_accounts_managed_event_hub_enabled" {
  description = "Map of managed_event_hub_enabled values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.managed_event_hub_enabled if v.managed_event_hub_enabled != null }
}
output "purview_accounts_managed_resource_group_name" {
  description = "Map of managed_resource_group_name values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.managed_resource_group_name if v.managed_resource_group_name != null && length(v.managed_resource_group_name) > 0 }
}
output "purview_accounts_managed_resources" {
  description = "Map of managed_resources values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.managed_resources if v.managed_resources != null && length(v.managed_resources) > 0 }
}
output "purview_accounts_name" {
  description = "Map of name values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "purview_accounts_public_network_enabled" {
  description = "Map of public_network_enabled values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.public_network_enabled if v.public_network_enabled != null }
}
output "purview_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "purview_accounts_scan_endpoint" {
  description = "Map of scan_endpoint values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.scan_endpoint if v.scan_endpoint != null && length(v.scan_endpoint) > 0 }
}
output "purview_accounts_tags" {
  description = "Map of tags values across all purview_accounts, keyed the same as var.purview_accounts"
  value       = { for k, v in azurerm_purview_account.purview_accounts : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

