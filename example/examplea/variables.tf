variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "api_name" {
  type = string
}

variable "datasource_user_name" {
  type = string
}

variable "lambda_resolver_arn" {
  type = string
}
