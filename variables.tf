variable "api_keys" {
  description = <<EOT
Map of api_keys, attributes below
Required:
    - name
Optional:
    - remote_config_read_enabled
EOT

  type = map(object({
    name                       = string
    remote_config_read_enabled = optional(bool)
  }))
}

