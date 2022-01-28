variable "common_tags" {
  description = "This is a map type for applying tags on resources"
  type        = map(any)
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
  type = string
}

variable "response_template" {
  type = string
}

variable "schema" {
  type = string
}

variable "log_level" {
  type        = string
  default     = "ERROR"
  description = "log level for the api"
}


variable "retention_in_days" {
  type        = number
  default     = 90
  description = "How long Cloudwatch retains your logs"
}

variable "kms_key_id" {
  type        = string
  description = "KMS key arn"
}

variable "web_acl_arn" {
  type = string
}
