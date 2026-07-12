resource "aws_appsync_datasource" "user" {
  # holden:ignore:HLD_PROPOSED_002: aws_iam_role_policy.invoke_lambda grants lambda:InvokeFunction
  # scoped to var.lambda_resolver_arn (see aws_iam_role.appsync.tf); the policy check's matches()
  # cannot evaluate a regex once the policy string contains a variable interpolation for Resource
  api_id           = aws_appsync_graphql_api.main.id
  name             = var.datasource_user_name
  type             = "AWS_LAMBDA"
  service_role_arn = aws_iam_role.appsync.arn

  lambda_config {
    function_arn = var.lambda_resolver_arn
  }
}
