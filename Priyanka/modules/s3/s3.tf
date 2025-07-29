variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "My S3 Bucket"
  }
}  

output "bucket" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.my_s3_bucket.bucket
}