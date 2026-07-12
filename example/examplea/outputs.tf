output "datasource" {
  description = "The AppSync datasource output"
  value       = module.appsync.datasource
}

output "api" {
  description = "The AppSync API output"
  value       = module.appsync.api
}

output "resolver" {
  description = "The AppSync resolver output"
  value       = module.appsync.resolver
}
