locals {
  lambda_resolver_arn = "arn:aws:lambda:eu-west-1:${data.aws_caller_identity.current.account_id}:function:examplea"
}

data "aws_caller_identity" "current" {}
