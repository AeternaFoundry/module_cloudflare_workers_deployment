variable "workers_deployments" {
  description = <<EOT
Map of workers_deployments, attributes below
Required:
    - account_id
    - script_name
    - strategy
    - versions
Optional:
    - annotations
EOT

  type = map(object({
    account_id  = string
    script_name = string
    strategy    = string
    versions = list(object({
      percentage = number
      version_id = string
    }))
    annotations = optional(object({
      workers_message = optional(string)
    }))
  }))
}

