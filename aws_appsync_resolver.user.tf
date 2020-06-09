
resource "aws_appsync_resolver" "user" {
  api_id            = aws_appsync_graphql_api.main.id
  field             = "register"
  type              = "Mutation"
  data_source       = aws_appsync_datasource.user.name
  request_template  = ""
  response_template = ""
}
