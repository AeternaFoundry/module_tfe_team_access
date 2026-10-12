output "team_accesses_id" {
  description = "Map of id values across all team_accesses, keyed the same as var.team_accesses except keys with no id are omitted"
  value       = { for k, v in tfe_team_access.team_accesses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_accesses_access" {
  description = "Map of access values across all team_accesses, keyed the same as var.team_accesses except keys with no access are omitted"
  value       = { for k, v in tfe_team_access.team_accesses : k => v.access if v.access != null && length(v.access) > 0 }
}
output "team_accesses_permissions" {
  description = "Map of permissions values across all team_accesses, keyed the same as var.team_accesses except keys with no permissions are omitted"
  value       = { for k, v in tfe_team_access.team_accesses : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "team_accesses_team_id" {
  description = "Map of team_id values across all team_accesses, keyed the same as var.team_accesses except keys with no team_id are omitted"
  value       = { for k, v in tfe_team_access.team_accesses : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}
output "team_accesses_workspace_id" {
  description = "Map of workspace_id values across all team_accesses, keyed the same as var.team_accesses except keys with no workspace_id are omitted"
  value       = { for k, v in tfe_team_access.team_accesses : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

