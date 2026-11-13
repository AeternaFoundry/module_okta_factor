output "factors_id" {
  description = "Map of id values across all factors, keyed the same as var.factors"
  value       = { for k, v in okta_factor.factors : k => v.id }
}
output "factors_active" {
  description = "Map of active values across all factors, keyed the same as var.factors"
  value       = { for k, v in okta_factor.factors : k => v.active }
}
output "factors_provider_id" {
  description = "Map of provider_id values across all factors, keyed the same as var.factors"
  value       = { for k, v in okta_factor.factors : k => v.provider_id }
}

