resource "google_storage_bucket_iam_policy" "storage_bucket_iam_policies" {
  for_each = var.storage_bucket_iam_policies

  bucket      = each.value.bucket
  policy_data = each.value.policy_data

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

