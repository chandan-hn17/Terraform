#Use hardcoded values: Variables aren't allowed in backend blocks 

terraform {
  backend "s3" {
    bucket = "state-files-hub2025"
    key    = "2025/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-lock"
    encrypt = true
  }
}