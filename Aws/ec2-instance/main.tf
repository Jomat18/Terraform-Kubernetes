provider "aws" {
  region  = var.region
}

terraform {
  required_version = ">= 0.12" # "~> 0.12.24"
}

resource "aws_instance" "ec2_example" {
  ami           = var.ami  #Amazon Machine Image
  instance_type = var.instance_type  #"t2.micro"
}