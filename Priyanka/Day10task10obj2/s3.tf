resource "aws_s3_bucket" "yellowstone_bucket" {
  bucket = "yellowstone-bucket-866"

  tags = {
    Name        = "Myyellows3Bucket"
    Environment = "Dev"
  }
}

data "aws_s3_bucket" "aws_s3_bucket" {
  bucket = aws_s3_bucket.yellowstone_bucket.bucket
}