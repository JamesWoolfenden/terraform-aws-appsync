
variable "api_name" {
  type        = string
  default     = "hitme"
  description = "Name of the AppSync api"

  validation {
    condition     = length(var.api_name) > 0
    error_message = "api_name must not be empty."
  }
}

variable "datasource_user_name" {
  type        = string
  default     = "hitme_user"
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

variable "request_template" {
  type        = string
  description = "Velocity template for the resolver request mapping"

  validation {
    condition     = length(var.request_template) > 0
    error_message = "request_template must not be empty."
  }
}

variable "response_template" {
  type        = string
  description = "Velocity template for the resolver response mapping"

  validation {
    condition     = length(var.response_template) > 0
    error_message = "response_template must not be empty."
  }
}

variable "schema" {
  type        = string
  description = "GraphQL schema for the AppSync API"

  validation {
    condition     = length(var.schema) > 0
    error_message = "schema must not be empty."
  }
}

variable "log_level" {
  type        = string
  default     = "ERROR"
  description = "log level for the api"

  validation {
    condition     = contains(["ALL", "ERROR", "NONE"], var.log_level)
    error_message = "log_level must be one of: ALL, ERROR, NONE."
  }
}

variable "retention_in_days" {
  type        = number
  default     = 365
  description = "How long Cloudwatch retains your logs"

  validation {
    condition     = var.retention_in_days > 0
    error_message = "retention_in_days must be greater than 0."
  }
}

variable "kms_key_id" {
  type        = string
  description = "KMS key arn"
  sensitive   = true

  validation {
    condition     = length(var.kms_key_id) > 0
    error_message = "kms_key_id must not be empty."
  }
}

variable "web_acl_arn" {
  type        = string
  description = "ARN of the AWS WAF Web ACL to associate with the AppSync API"

  validation {
    condition     = length(var.web_acl_arn) > 0
    error_message = "web_acl_arn must not be empty."
  }
}

variable "appsync_rolename" {
  type        = string
  description = "The name of the role to attach to appsync"
  default     = "Appsync"

  validation {
    condition     = length(var.appsync_rolename) > 0
    error_message = "appsync_rolename must not be empty."
  }
}

variable "resolver_type" {
  type        = string
  description = "The type of the resolver (e.g., Query, Mutation, Subscription)"

  validation {
    condition     = length(var.resolver_type) > 0
    error_message = "resolver_type must not be empty."
  }
}

variable "resolver_field" {
  type        = string
  description = "The field for which to create the resolver"

  validation {
    condition     = length(var.resolver_field) > 0
    error_message = "resolver_field must not be empty."
  }
}

variable "api_key_expires" {
  type        = string
  description = "RFC3339 expiry timestamp for the AppSync API key. Leave null to use AWS's default 7-day expiry."
  default     = null
  sensitive   = true

  validation {
    condition     = var.api_key_expires == null || can(timeadd(var.api_key_expires, "0h"))
    error_message = "api_key_expires must be null or a valid RFC3339 timestamp."
  }
}
