provider "grafana" {
  url  = var.stack_url
  auth = var.stack_management_token
  cloud_api_key = var.plugin_policy_token
}

resource "grafana_data_source" "prometheus" {
  type                = "prometheus"
  name                = "cohort-prometheus"
  url                 = "http://${var.prometheus_endpoint}"
  is_default          = true
  basic_auth_enabled  = true
  basic_auth_username = "admin"
  uid                 = "pe-prometheus-datasource"

  json_data_encoded = jsonencode({
    manageAlerts = false
  })
  secure_json_data_encoded = jsonencode({
    basicAuthPassword = var.prometheus_password
  })
}

resource "grafana_data_source" "github" {
  type                = "grafana-github-datasource"
  name                = "grafana-github-datasource"

  json_data_encoded = jsonencode({
    githubUrl        = "github.com"
  })

  secure_json_data_encoded = jsonencode({
    accessToken = var.github_access_token
  })
}

resource "grafana_cloud_plugin_installation" "github" {
  stack_slug = var.stack_slug
  version    = "1.4.7"
  slug       = "grafana-github-datasource"
}
