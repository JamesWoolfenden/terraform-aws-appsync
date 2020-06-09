output "datasource" {
  value = aws_appsync_datasource.user
}

output "api" {
  value = aws_appsync_graphql_api.main
}

output "resolver" {
  value = aws_appsync_resolver.user
}
