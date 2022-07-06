terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "~> 1.21.2"
    }
  }
}

provider "grafana" {
  alias         = "cloud"
  cloud_api_key = var.grafana_cloud_api_key
}
