output "rds_snapshots_lookup_db_instance_identifier" {
  description = "Map of db_instance_identifier values across all rds_snapshots_lookup, keyed the same as var.rds_snapshots_lookup"
  value       = { for k, v in data.aws_rds_snapshots.rds_snapshots_lookup : k => v.db_instance_identifier if v.db_instance_identifier != null && length(v.db_instance_identifier) > 0 }
}
output "rds_snapshots_lookup_db_snapshot_identifier" {
  description = "Map of db_snapshot_identifier values across all rds_snapshots_lookup, keyed the same as var.rds_snapshots_lookup"
  value       = { for k, v in data.aws_rds_snapshots.rds_snapshots_lookup : k => v.db_snapshot_identifier if v.db_snapshot_identifier != null && length(v.db_snapshot_identifier) > 0 }
}
output "rds_snapshots_lookup_filter" {
  description = "Map of filter values across all rds_snapshots_lookup, keyed the same as var.rds_snapshots_lookup"
  value       = { for k, v in data.aws_rds_snapshots.rds_snapshots_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "rds_snapshots_lookup_include_public" {
  description = "Map of include_public values across all rds_snapshots_lookup, keyed the same as var.rds_snapshots_lookup"
  value       = { for k, v in data.aws_rds_snapshots.rds_snapshots_lookup : k => v.include_public if v.include_public != null }
}
output "rds_snapshots_lookup_include_shared" {
  description = "Map of include_shared values across all rds_snapshots_lookup, keyed the same as var.rds_snapshots_lookup"
  value       = { for k, v in data.aws_rds_snapshots.rds_snapshots_lookup : k => v.include_shared if v.include_shared != null }
}
output "rds_snapshots_lookup_region" {
  description = "Map of region values across all rds_snapshots_lookup, keyed the same as var.rds_snapshots_lookup"
  value       = { for k, v in data.aws_rds_snapshots.rds_snapshots_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "rds_snapshots_lookup_snapshot_type" {
  description = "Map of snapshot_type values across all rds_snapshots_lookup, keyed the same as var.rds_snapshots_lookup"
  value       = { for k, v in data.aws_rds_snapshots.rds_snapshots_lookup : k => v.snapshot_type if v.snapshot_type != null && length(v.snapshot_type) > 0 }
}
output "rds_snapshots_lookup_snapshots" {
  description = "Map of snapshots values across all rds_snapshots_lookup, keyed the same as var.rds_snapshots_lookup"
  value       = { for k, v in data.aws_rds_snapshots.rds_snapshots_lookup : k => v.snapshots if v.snapshots != null && length(v.snapshots) > 0 }
}

