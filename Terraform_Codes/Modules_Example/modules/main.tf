
Child main.tf:

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  ami           = "ami-0b7207e48d1b6c06f"
  instance_type = "t2.micro"
  tags = { Name = "Instance_from_Child"
  }
}
