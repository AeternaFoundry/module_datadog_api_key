resource "datadog_api_key" "api_keys" {
  for_each = var.api_keys

  name                       = each.value.name
  remote_config_read_enabled = each.value.remote_config_read_enabled
}

