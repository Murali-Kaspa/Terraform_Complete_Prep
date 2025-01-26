iprovider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  instance_type = "t2.micro"
  ami           = "ami-0b7207e48d1b6c06f" #Replace AMI as per your region.
  tags = { Name = "Outputs_Instance"
  }
}

#You create a new file to display the outputs if required, else you can write here.
#NOTE : Terraform will not throw any error for this cases like defining output in main.tf and outputs.tf, you just need to change instance_public_ip to someother name.

output "instance_public_ip" {
  description = "Show instance Public IP"
  value       = aws_instance.one.public_ip
}
