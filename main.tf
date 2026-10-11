data "oci_kms_keys" "kms_keys_lookup" {
  for_each = var.kms_keys_lookup

  compartment_id      = each.value.compartment_id
  management_endpoint = each.value.management_endpoint
  algorithm           = each.value.algorithm
  curve_id            = each.value.curve_id
  length              = each.value.length
  protection_mode     = each.value.protection_mode

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

