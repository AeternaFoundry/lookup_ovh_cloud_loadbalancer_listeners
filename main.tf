data "ovh_cloud_loadbalancer_listeners" "cloud_loadbalancer_listeners_lookup" {
  for_each = var.cloud_loadbalancer_listeners_lookup

  loadbalancer_id = each.value.loadbalancer_id
  service_name    = each.value.service_name
}

