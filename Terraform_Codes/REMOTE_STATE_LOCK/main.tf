provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance" {
  ami           = var.ami
count = 2
  instance_type = var.instance_type
}

resource "aws_s3_bucket" "Bucket" {
  bucket = var.bucket_name
  acl    = "private"
  versioning {
    enabled = true
  }

}

resource "aws_dynamodb_table" "dynamo_lock" {
  name         = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}



