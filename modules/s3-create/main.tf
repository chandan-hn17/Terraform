resource "aws_s3_bucket" "s3-state-files" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "s3-bv" {
  bucket = aws_s3_bucket.s3-state-files.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "sse" {
  bucket = aws_s3_bucket.s3-state-files.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "bpa" {
  bucket = aws_s3_bucket.s3-state-files.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}