resource "aws_s3_bucket" "pri_multi_bucket" {
  count  = length(var.bucket_names)
  bucket = "${var.bucket_names[count.index]}-${var.env_suffix}"

  tags = {
    Environment = var.env_suffix
    Name        = "${var.bucket_names[count.index]}-${var.env_suffix}"
  }
}
