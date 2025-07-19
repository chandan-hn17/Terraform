output "new_bucket_name" {
    value = module.s3_create.new_bucket_name
}

output "new_dynamodb_name" {
  value = module.dynamodb_db-create.new_dynamodb_name
}

output "new_instance_id" {
  value = module.ec2-create.new_instance_id
}