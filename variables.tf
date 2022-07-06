variable "grafana_cloud_api_key" {
  default   = ""
  type      = string
  sensitive = true
}

variable "grafana_stack_name" {
  default = "oteldemostack"
  type    = string
}

variable "grafana_region" {
  default = "eu"
  type    = string
}
