variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "api_name" {
  type    = string
  default = "hitme"
}

variable "datasource_user_name" {
  type    = string
  default = "hitme_user"
}

variable "lambda_resolver_arn" {
  type = string
}
