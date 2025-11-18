provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "onebucket" {
  bucket = "myuniquebucket18112025"

  versioning {
    enabled = true
  }
}
