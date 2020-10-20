resource "aws_appsync_graphql_api" "main" {
  authentication_type = "API_KEY"
  name                = var.api_name
  schema              = var.schema
  tags                = var.common_tags
}
