provider "aws" {
  region  = var.region
}

terraform {
  required_version = ">= 0.12"
}

resource "random_id" "instance_id" {
  byte_length = 4
}

resource "aws_instance" "ec2_example" {
  ami           = var.ami
  count         = 3
  instance_type = var.instance_type
  tags = {
    Name = "my-instance-${random_id.instance_id.hex}"
  }
}