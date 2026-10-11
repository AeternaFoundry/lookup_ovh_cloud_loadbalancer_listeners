output "cloud_loadbalancer_listeners_lookup_listeners" {
  description = "Map of listeners values across all cloud_loadbalancer_listeners_lookup, keyed the same as var.cloud_loadbalancer_listeners_lookup except keys with no listeners are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancer_listeners.cloud_loadbalancer_listeners_lookup : k => v.listeners if v.listeners != null && length(v.listeners) > 0 }
}
output "cloud_loadbalancer_listeners_lookup_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all cloud_loadbalancer_listeners_lookup, keyed the same as var.cloud_loadbalancer_listeners_lookup except keys with no loadbalancer_id are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancer_listeners.cloud_loadbalancer_listeners_lookup : k => v.loadbalancer_id if v.loadbalancer_id != null && length(v.loadbalancer_id) > 0 }
}
output "cloud_loadbalancer_listeners_lookup_service_name" {
  description = "Map of service_name values across all cloud_loadbalancer_listeners_lookup, keyed the same as var.cloud_loadbalancer_listeners_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_loadbalancer_listeners.cloud_loadbalancer_listeners_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

