
resource "aws_appsync_resolver" "user" {
  api_id            = aws_appsync_graphql_api.main.id
  field             = "singlePost"
  type              = "Query"
  data_source       = aws_appsync_datasource.user.name
  request_template  = var.request_template
  response_template = var.response_template
}


variable "resolver_type" {
  type        = string
  description = "(optional) describe your variable"
}

variable "resolver_field" {
  type        = string
  description = "(optional) describe your variable"
}
