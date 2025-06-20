provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "my_first_bucket" {
  bucket = var.s3_bucket

  tags = {
    Name = "Pri_bucket"
  }
}

resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = aws_s3_bucket.my_first_bucket.id

  rule {
    object_ownership = "ObjectWriter" # Enables ACLs
  }
}

resource "aws_s3_bucket_acl" "my_first_bucket_acl" {
  bucket = aws_s3_bucket.my_first_bucket.id
  acl    = var.bucket_acl
}