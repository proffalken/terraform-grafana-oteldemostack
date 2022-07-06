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
