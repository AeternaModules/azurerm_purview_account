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
  # --- Unconfirmed validation candidates, derived from azurerm_purview_account's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: can(regex("^[a-zA-Z0-9][-a-zA-Z0-9]{1,61}[a-zA-Z0-9]$", value))
  #   message:   The Purview account name must be between 3 and 63 characters long, it can contain only letters, numbers and hyphens, and the first and last characters must be a letter or number.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: managed_resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: managed_resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: managed_resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: managed_resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

