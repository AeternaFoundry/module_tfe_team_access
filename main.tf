resource "tfe_team_access" "team_accesses" {
  for_each = var.team_accesses

  team_id      = each.value.team_id
  workspace_id = each.value.workspace_id
  access       = each.value.access

  dynamic "permissions" {
    for_each = each.value.permissions != null ? each.value.permissions : []
    content {
      policy_overrides  = permissions.value.policy_overrides
      run_tasks         = permissions.value.run_tasks
      runs              = permissions.value.runs
      sentinel_mocks    = permissions.value.sentinel_mocks
      state_versions    = permissions.value.state_versions
      variables         = permissions.value.variables
      workspace_locking = permissions.value.workspace_locking
    }
  }
}

