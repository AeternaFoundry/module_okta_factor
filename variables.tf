variable "factors" {
  description = <<EOT
Map of factors, attributes below
Required:
    - provider_id
Optional:
    - active
EOT

  type = map(object({
    provider_id = string
    active      = optional(bool)
  }))
}

