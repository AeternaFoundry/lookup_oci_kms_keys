variable "kms_keys_lookup" {
  description = <<EOT
Map of kms_keys_lookup, attributes below
Required:
    - compartment_id
    - management_endpoint
Optional:
    - algorithm
    - curve_id
    - length
    - protection_mode
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id      = string
    management_endpoint = string
    algorithm           = optional(string)
    curve_id            = optional(string)
    length              = optional(number)
    protection_mode     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

