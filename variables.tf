variable "common_tags" {
  description = "This is a map type for applying tags on resources"
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

variable "request_template" {
}

variable "response_template" {
}
