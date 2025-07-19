output "new_bucket_name" {
    value = aws_s3_bucket.s3-state-files.id
}