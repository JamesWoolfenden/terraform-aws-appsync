resource "aws_appsync_datasource" "user" {
  api_id           = aws_appsync_graphql_api.main.id
  name             = var.datasource_user_name
  type             = "AWS_LAMBDA"
  service_role_arn = aws_iam_role.appsync.arn

  lambda_config {
    function_arn = var.lambda_resolver_arn
  }
}
