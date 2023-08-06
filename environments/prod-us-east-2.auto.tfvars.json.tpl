{
    "org_name": "cdi201team6",
    "cluster_name": "prod-us-east-2",
    "team_name": "team6",
    "stack_slug": "team6201stack",
    "stack_url": "https://team6201stack.grafana.net",
    "stack_management_token": "{{ op://cohorts/team6-201-svc-grafana/team6201stack_management_sa_key }}",
    "plugin_policy_token": "{{ op://cohorts/team6-201-svc-grafana/plugin-policy-token }}",
    "prometheus_endpoint": "{{ op://cohorts/team6-201-platform-vcluster/prometheus_endpoint }}",
    "prometheus_password": "{{ op://cohorts/team6-201-platform-vcluster/prometheus_password }}",
    "node_exporter_port": "9106",
    "metrics_server_version": "v0.6.3",
    "prometheus_version": "v2.42.0",
    "grafana_agent_version": "v0.33.1",
    "alert_channel": "prod"
}
