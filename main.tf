resource "cloudflare_workers_deployment" "workers_deployments" {
  for_each = var.workers_deployments

  account_id  = each.value.account_id
  script_name = each.value.script_name
  strategy    = each.value.strategy
  versions    = each.value.versions
  annotations = each.value.annotations
}

