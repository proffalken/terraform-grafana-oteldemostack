variable "grafana_cloud_api_key" {
  default   = ""
  type      = string
  sensitive = true
}

variable "grafana_stack_name" {
  default = "otel-demo-stack"
  type    = string
}

variable "grafana_region" {
  default = "eu"
  type    = string
}
