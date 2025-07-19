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