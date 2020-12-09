variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami" {
  default     = "ami-00ddb0e5626798373"  #Amazon Machine Image
}

variable "instance_type" {
  default     = "t2.micro"
}