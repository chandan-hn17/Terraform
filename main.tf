module "s3_create" {
  source = "./modules/s3-create"
  bucket_name = var.bucket_name
}

module "dynamodb_db-create" {
  source = "./modules/dynamo_db-create"
  dynamodb_table_name = var.dynamodb_table_name
}

module "ec2-create" {
  source = "./modules/ec2-create"
  ami_id = var.ami_id
  instance_type = var.instance_type
  total_number_of_instances = var.total_number_of_instances
}