variable "rds_snapshots_lookup" {
  description = <<EOT
Map of rds_snapshots_lookup, attributes below
Optional:
    - db_instance_identifier
    - db_snapshot_identifier
    - include_public
    - include_shared
    - region
    - snapshot_type
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    db_instance_identifier = optional(string)
    db_snapshot_identifier = optional(string)
    include_public         = optional(bool)
    include_shared         = optional(bool)
    region                 = optional(string)
    snapshot_type          = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

