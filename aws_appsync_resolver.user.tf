resource "aws_appsync_resolver" "user" {
  api_id            = aws_appsync_graphql_api.main.id
  field             = var.resolver_field
  type              = var.resolver_type
  data_source       = aws_appsync_datasource.user.name
  request_template  = var.request_template
  response_template = var.response_template
}
