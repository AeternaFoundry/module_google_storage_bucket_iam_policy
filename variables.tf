variable "storage_bucket_iam_policies" {
  description = <<EOT
Map of storage_bucket_iam_policies, attributes below
Required:
    - bucket
    - policy_data
Optional:
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    bucket      = string
    policy_data = string
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
}

