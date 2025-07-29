locals {
    region = "us-east-1"
    instance_type = "t2.micro"
    common_tags = {
        Environment = "Development"
        Owner       = "Student"
    }
}

resource "aws_instance" "demo_server" {
    ami           = "ami-02457590d33d576c3"
    instance_type = local.instance_type
    tags          = local.common_tags
}

resource "aws_s3_bucket" "lloyd-bucket" {
    bucket = "lloyd-bucket-${random_id.bucket_id.hex}"
    tags   = local.common_tags
}

resource "random_id" "bucket_id" {
  byte_length = 4
}