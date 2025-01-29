terraform {
  backend "s3" {
    bucket         = "buckettostorelock29012025"
    key            = "murali/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform_lock"
  }
}
