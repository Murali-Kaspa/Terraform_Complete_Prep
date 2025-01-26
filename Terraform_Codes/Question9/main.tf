iprovider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  instance_type = "t2.micro"
  ami           = "ami-0b7207e48d1b6c06f" #Replace AMI as per your region.
  tags = { Name = "Outputs_Instance"
  }
}

#You create a new file to display if required else you can write here.

output "instance_public_ip" {
  description = "Show instance Public IP"
  value       = aws_instance.one.public_ip
}
