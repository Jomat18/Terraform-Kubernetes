variable "region" {
  description = "AWS region"
  default     = "us-east-2"
}

variable "ami" {
  default     =  "ami-0c8110836d05ad7bd"
}

variable "instance_type" {
  default = "t2.micro"
}