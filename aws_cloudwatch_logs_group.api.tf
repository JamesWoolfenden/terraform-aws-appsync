

resource "aws_cloudwatch_log_group" "api" {
  name_prefix       = var.api_name
  retention_in_days = var.retention_in_days
  kms_key_id        = var.kms_key_id
}
