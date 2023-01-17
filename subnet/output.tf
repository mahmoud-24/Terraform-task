output "database_subnets" {
  value       = aws_subnet.database.*.id
}