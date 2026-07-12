variable "api_name" {
  type        = string
  description = "Name of the AppSync api"

  validation {
    condition     = length(var.api_name) > 0
    error_message = "api_name must not be empty."
  }
}

variable "datasource_user_name" {
  type        = string
  description = "Name of the datasource user"

  validation {
    condition     = length(var.datasource_user_name) > 0
    error_message = "datasource_user_name must not be empty."
  }
}

variable "lambda_resolver_arn" {
  type        = string
  description = "ARN of the Lambda function used as the resolver"

  validation {
    condition     = length(var.lambda_resolver_arn) > 0
    error_message = "lambda_resolver_arn must not be empty."
  }
}
