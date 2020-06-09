
resource "aws_appsync_resolver" "user" {
  api_id      = aws_appsync_graphql_api.marvel_api.id
  field       = "register"
  type        = "Mutation"
  data_source = aws_appsync_datasource.user.name

  request_template = <<EOF
{
    "version" : "2017-02-28",
    "operation": "Invoke",
    "payload": $util.toJson($context.arguments.input)
}
EOF

  response_template = <<EOF
$util.toJson($context.result)
EOF

}
