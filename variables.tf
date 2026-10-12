variable "team_accesses" {
  description = <<EOT
Map of team_accesses, attributes below
Required:
    - team_id
    - workspace_id
Optional:
    - access
    - permissions (block):
        - policy_overrides (optional)
        - run_tasks (required)
        - runs (required)
        - sentinel_mocks (required)
        - state_versions (required)
        - variables (required)
        - workspace_locking (required)
EOT

  type = map(object({
    team_id      = string
    workspace_id = string
    access       = optional(string)
    permissions = optional(list(object({
      policy_overrides  = optional(bool)
      run_tasks         = bool
      runs              = string
      sentinel_mocks    = string
      state_versions    = string
      variables         = string
      workspace_locking = bool
    })))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

