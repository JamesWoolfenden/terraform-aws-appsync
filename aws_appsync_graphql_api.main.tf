resource "aws_appsync_graphql_api" "main" {
  # checkov:skip=CKV2_AWS_78: WAF WebACL association is managed in aws_wafv2_web_acl_association.waf.tf
  authentication_type = "API_KEY"
  name                = var.api_name
  schema              = var.schema
  log_config {
    field_log_level          = var.log_level
    cloudwatch_logs_role_arn = aws_iam_role.appsync.arn
  }
}
