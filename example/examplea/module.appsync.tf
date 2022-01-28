module "appsync" {
  source               = "../../"
  common_tags          = var.common_tags
  lambda_resolver_arn  = var.lambda_resolver_arn
  datasource_user_name = var.datasource_user_name
  api_name             = var.api_name
  request_template     = file("${path.module}/templates/request")
  response_template    = file("${path.module}/templates/response")
  schema               = file("${path.module}/templates/schema")
  resolver_field       = "singlePost"
  resolver_type        = "Query"
  kms_key_id           = aws_kms_key.example.arn
  web_acl_arn          = module.waf2.aws_wafv2_web_acl.arn
}


module "waf2" {
  source      = "JamesWoolfenden/waf2/aws"
  version     = "0.0.5"
  kms_key_arn = aws_kms_key.example.arn
}
