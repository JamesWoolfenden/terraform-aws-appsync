resource "aws_appsync_graphql_api" "main" {
  authentication_type = "API_KEY"
  name                = var.api_name
  schema              = var.schema
  log_config {
    field_log_level          = var.log_level
    cloudwatch_logs_role_arn = aws_cloudwatch_log_group.api.arn
  }
  tags = var.common_tags
}
