module "appsync" {
  source               = "../../"
  common_tags          = var.common_tags
  lambda_resolver_arn  = var.lambda_resolver_arn
  datasource_user_name = var.datasource_user_name
  api_name             = var.api_name
  request_template     = ""
  response_template    = ""
}
