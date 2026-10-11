output "kms_keys_lookup_id" {
  description = "Map of id values across all kms_keys_lookup, keyed the same as var.kms_keys_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_kms_keys.kms_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_keys_lookup_algorithm" {
  description = "Map of algorithm values across all kms_keys_lookup, keyed the same as var.kms_keys_lookup except keys with no algorithm are omitted"
  value       = { for k, v in data.oci_kms_keys.kms_keys_lookup : k => v.algorithm if v.algorithm != null && length(v.algorithm) > 0 }
}
output "kms_keys_lookup_compartment_id" {
  description = "Map of compartment_id values across all kms_keys_lookup, keyed the same as var.kms_keys_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_kms_keys.kms_keys_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "kms_keys_lookup_curve_id" {
  description = "Map of curve_id values across all kms_keys_lookup, keyed the same as var.kms_keys_lookup except keys with no curve_id are omitted"
  value       = { for k, v in data.oci_kms_keys.kms_keys_lookup : k => v.curve_id if v.curve_id != null && length(v.curve_id) > 0 }
}
output "kms_keys_lookup_filter" {
  description = "Map of filter values across all kms_keys_lookup, keyed the same as var.kms_keys_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_kms_keys.kms_keys_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "kms_keys_lookup_keys" {
  description = "Map of keys values across all kms_keys_lookup, keyed the same as var.kms_keys_lookup except keys with no keys are omitted"
  value       = { for k, v in data.oci_kms_keys.kms_keys_lookup : k => v.keys if v.keys != null && length(v.keys) > 0 }
}
output "kms_keys_lookup_length" {
  description = "Map of length values across all kms_keys_lookup, keyed the same as var.kms_keys_lookup except keys with no length are omitted"
  value       = { for k, v in data.oci_kms_keys.kms_keys_lookup : k => v.length if v.length != null }
}
output "kms_keys_lookup_management_endpoint" {
  description = "Map of management_endpoint values across all kms_keys_lookup, keyed the same as var.kms_keys_lookup except keys with no management_endpoint are omitted"
  value       = { for k, v in data.oci_kms_keys.kms_keys_lookup : k => v.management_endpoint if v.management_endpoint != null && length(v.management_endpoint) > 0 }
}
output "kms_keys_lookup_protection_mode" {
  description = "Map of protection_mode values across all kms_keys_lookup, keyed the same as var.kms_keys_lookup except keys with no protection_mode are omitted"
  value       = { for k, v in data.oci_kms_keys.kms_keys_lookup : k => v.protection_mode if v.protection_mode != null && length(v.protection_mode) > 0 }
}

