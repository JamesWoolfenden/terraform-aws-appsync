module "appsync" {
  source               = "../../"
  common_tags          = var.common_tags
  lambda_resolver_arn  = var.lambda_resolver_arn
  datasource_user_name = var.datasource_user_name
  api_name             = var.api_name
  request_template     = file("${path.module}/templates/request.json")
  response_template    = file("${path.module}/templates/response")
  schema               = file("${path.module}/templates/schema")
  resolver_field       = "singlePost"
  resolver_type        = "Query"
}
