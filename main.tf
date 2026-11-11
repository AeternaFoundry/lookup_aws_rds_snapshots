data "aws_rds_snapshots" "rds_snapshots_lookup" {
  for_each = var.rds_snapshots_lookup

  db_instance_identifier = each.value.db_instance_identifier
  db_snapshot_identifier = each.value.db_snapshot_identifier
  include_public         = each.value.include_public
  include_shared         = each.value.include_shared
  region                 = each.value.region
  snapshot_type          = each.value.snapshot_type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

