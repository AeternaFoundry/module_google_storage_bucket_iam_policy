output "storage_bucket_iam_policies_id" {
  description = "Map of id values across all storage_bucket_iam_policies, keyed the same as var.storage_bucket_iam_policies except keys with no id are omitted"
  value       = { for k, v in google_storage_bucket_iam_policy.storage_bucket_iam_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_bucket_iam_policies_bucket" {
  description = "Map of bucket values across all storage_bucket_iam_policies, keyed the same as var.storage_bucket_iam_policies except keys with no bucket are omitted"
  value       = { for k, v in google_storage_bucket_iam_policy.storage_bucket_iam_policies : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "storage_bucket_iam_policies_etag" {
  description = "Map of etag values across all storage_bucket_iam_policies, keyed the same as var.storage_bucket_iam_policies except keys with no etag are omitted"
  value       = { for k, v in google_storage_bucket_iam_policy.storage_bucket_iam_policies : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "storage_bucket_iam_policies_policy_data" {
  description = "Map of policy_data values across all storage_bucket_iam_policies, keyed the same as var.storage_bucket_iam_policies except keys with no policy_data are omitted"
  value       = { for k, v in google_storage_bucket_iam_policy.storage_bucket_iam_policies : k => v.policy_data if v.policy_data != null && length(v.policy_data) > 0 }
}

