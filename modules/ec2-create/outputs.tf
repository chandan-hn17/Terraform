output "new_instance_id" {
  value = [for instance in aws_instance.ec2_instance : instance.id]
}