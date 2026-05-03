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
  source      = "git::https://github.com/JamesWoolfenden/terraform-aws-waf2.git?ref=718f0aa1a0657a021ea96d224f938995fe85be02" #718f0aa1a0657a021ea96d224f938995fe85be02
  kms_key_arn = aws_kms_key.example.arn
}
