resource "aws_wafv2_web_acl_association" "example" {
  resource_arn = aws_appsync_graphql_api.main.arn
  web_acl_arn  = var.web_acl_arn
}
