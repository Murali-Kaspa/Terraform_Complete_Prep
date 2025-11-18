provider "aws"{
region = "ap-south-1"
}

resource "aws_instance" "one"{

ami = ""
instance_type = "t2.micro"
}


