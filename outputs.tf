output "api_keys_id" {
  description = "Map of id values across all api_keys, keyed the same as var.api_keys except keys with no id are omitted"
  value       = { for k, v in datadog_api_key.api_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_keys_key" {
  description = "Map of key values across all api_keys, keyed the same as var.api_keys except keys with no key are omitted"
  value       = { for k, v in datadog_api_key.api_keys : k => v.key if v.key != null && length(v.key) > 0 }
  sensitive   = true
}
output "api_keys_name" {
  description = "Map of name values across all api_keys, keyed the same as var.api_keys except keys with no name are omitted"
  value       = { for k, v in datadog_api_key.api_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_keys_remote_config_read_enabled" {
  description = "Map of remote_config_read_enabled values across all api_keys, keyed the same as var.api_keys except keys with no remote_config_read_enabled are omitted"
  value       = { for k, v in datadog_api_key.api_keys : k => v.remote_config_read_enabled if v.remote_config_read_enabled != null }
}

