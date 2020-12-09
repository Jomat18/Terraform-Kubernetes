provider "aws" {
  region  = var.region
}

resource "random_id" "instance_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "bucket-${random_id.instance_id.hex}"
  force_destroy = true
  acl    = "private"

  versioning {
    enabled = true
  }
}