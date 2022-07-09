resource "grafana_cloud_stack" "oteldemo" {
  provider = grafana.cloud

  name        = var.grafana_stack_name
  slug        = var.grafana_stack_name
  region_slug = var.grafana_region
}

resource "grafana_api_key" "management" {
  provider = grafana.cloud

  cloud_stack_slug = grafana_cloud_stack.oteldemo.slug
  name             = "management-key"
  role             = "Admin"
}

resource "grafana_cloud_api_key" "metrics" {
  provider = grafana.cloud

  cloud_org_slug = grafana_cloud_stack.oteldemo.org_slug
  name           = "metrics-publisher"
  role           = "MetricsPublisher"
}

resource "grafana_cloud_api_key" "metrics_viewer" {
  provider = grafana.cloud

  cloud_org_slug = grafana_cloud_stack.oteldemo.org_slug
  name           = "metrics-viewer"
  role           = "Viewer"
}

resource "grafana_cloud_api_key" "plugins" {
  provider = grafana.cloud

  cloud_org_slug = grafana_cloud_stack.oteldemo.org_slug
  name           = "plugin-publisher"
  role           = "PluginPublisher"
}

resource "grafana_cloud_api_key" "admin" {
  provider = grafana.cloud

  cloud_org_slug = grafana_cloud_stack.oteldemo.org_slug
  name           = "admin"
  role           = "Admin"
}
