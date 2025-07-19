variable "region_name" {
    description = "Region name"
    type = string 
}

variable "bucket_name" {
    description = "Name of S3 bucket"
    type = string
}

variable "dynamodb_table_name" {
  description = "Name of dynamo db table"
  type = string
}

variable "ami_id" {
  description = "AMI ID of linux flavours"
  type = string
}
variable "instance_type" {
  description = "Instance type of my instance"
}

variable "total_number_of_instances" {
  description = "Total number of instances to be deployed" 
}