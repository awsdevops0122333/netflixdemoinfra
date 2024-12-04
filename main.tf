provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0327f51db613d7bd2"
instance_type = "t2.medium"
key_name = "newkey"
vpc_security_group_ids = ["sg-0b7b9433fb144073c"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "Monitoring server"]
}
