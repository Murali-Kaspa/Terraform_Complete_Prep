provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  instance_type = "t2.large" #u can give var.instance_type also to create a instance the specified var instance_type
  ami           = var.ami
  tags = { Name = "Instance_From_Terraform"
  }
}
