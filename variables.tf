variable "purview_accounts" {
  description = <<EOT
Map of purview_accounts, attributes below
Required:
    - location
    - name
    - resource_group_name
    - identity (block):
        - identity_ids (optional)
        - type (required)
Optional:
    - managed_event_hub_enabled
    - managed_resource_group_name
    - public_network_enabled
    - tags
EOT

  type = map(object({
    location                    = string
    name                        = string
    resource_group_name         = string
    managed_event_hub_enabled   = optional(bool) # Default: true
    managed_resource_group_name = optional(string)
    public_network_enabled      = optional(bool) # Default: true
    tags                        = optional(map(string))
    identity = object({
      identity_ids = optional(set(string))
      type         = string
    })
  }))
}

