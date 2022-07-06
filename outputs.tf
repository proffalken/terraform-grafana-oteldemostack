output "prometheus_remote_write_endpoint" {
  value = grafana_cloud_stack.oteldemo.prometheus_remote_write_endpoint
}

output "prometheus_remote_endpoint" {
  value = grafana_cloud_stack.oteldemo.prometheus_remote_endpoint
}

output "prometheus_user_id" {
  value = grafana_cloud_stack.oteldemo.prometheus_remote_endpoint
}

output "loki_remote_endpoint" {
  value = grafana_cloud_stack.oteldemo.logs_url
}

output "loki_user_id" {
  value = grafana_cloud_stack.oteldemo.logs_user_id
}

output "prometheus_remote_endpoint" {
  value = grafana_cloud_stack.oteldemo.prometheus_remote_endpoint
}

output "management_api_key" {
  value     = grafana_api_key.management.key
  sensitive = true
}

output "metrics_publisher_api_key" {
  value     = grafana_api_key.metrics.key
  sensitive = true
}

output "plugin_publisher_api_key" {
  value     = grafana_api_key.plugins.key
  sensitive = true
}
