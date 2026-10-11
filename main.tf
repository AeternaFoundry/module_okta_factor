resource "okta_factor" "factors" {
  for_each = var.factors

  provider_id = each.value.provider_id
  active      = each.value.active
}

