output "datasource" {
  value       = aws_appsync_datasource.user
  description = "The AppSync datasource output"
}

output "api" {
  value       = aws_appsync_graphql_api.main
  description = "The AppSync API output"
}

output "resolver" {
  value       = aws_appsync_resolver.user
  description = "The AppSync resolver output"
}
