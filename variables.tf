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
    managed_event_hub_enabled   = optional(bool)
    managed_resource_group_name = optional(string)
    public_network_enabled      = optional(bool)
    tags                        = optional(map(string))
    identity = object({
      identity_ids = optional(set(string))
      type         = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.purview_accounts : (
        can(regex("^[a-zA-Z0-9][-a-zA-Z0-9]{1,61}[a-zA-Z0-9]$", v.name))
      )
    ])
    error_message = "The Purview account name must be between 3 and 63 characters long, it can contain only letters, numbers and hyphens, and the first and last characters must be a letter or number."
  }
  validation {
    condition = alltrue([
      for k, v in var.purview_accounts : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.purview_accounts : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.purview_accounts : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.purview_accounts : (
        v.managed_resource_group_name == null || (length(v.managed_resource_group_name) <= 90)
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.purview_accounts : (
        v.managed_resource_group_name == null || (!endswith(v.managed_resource_group_name, "."))
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.purview_accounts : (
        v.managed_resource_group_name == null || (length(v.managed_resource_group_name) != 0)
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.purview_accounts : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

