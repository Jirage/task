provider "aws" {
    region = "us-east-1"
}


resource "aws_instance" "My-task" {
    ami = "ami-00ca32bbc84273381"
    instance_type = "t2.micro"
    count = 2
    tags = {
      Name = "Web-server-1"
     
    }
    vpc_security_group_ids = ["sg-03f82bd1bc3a0d6d5"]
    key_name = "ajking"
  
}

