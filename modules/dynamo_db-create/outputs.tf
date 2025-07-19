output "new_dynamodb_name" {
  value = aws_dynamodb_table.terraform-state-locks.id
}