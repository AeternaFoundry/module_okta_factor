output "factors_id" {
  description = "Map of id values across all factors, keyed the same as var.factors except keys with no id are omitted"
  value       = { for k, v in okta_factor.factors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "factors_active" {
  description = "Map of active values across all factors, keyed the same as var.factors except keys with no active are omitted"
  value       = { for k, v in okta_factor.factors : k => v.active if v.active != null }
}
output "factors_provider_id" {
  description = "Map of provider_id values across all factors, keyed the same as var.factors except keys with no provider_id are omitted"
  value       = { for k, v in okta_factor.factors : k => v.provider_id if v.provider_id != null && length(v.provider_id) > 0 }
}

