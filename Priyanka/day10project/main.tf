resource "aws_instance" "test_server" {
  count         = var.launch_instance ? var.instance_count : 0
  ami           = var.ami
  instance_type = var.instance_type
  tags = merge(
    local.common_tags,
    local.common_tags_web_server,
    {
      Environment = var.environment
      Role        = var.role
    }
  )
}

resource "aws_s3_bucket" "alpha-bucket" {
  count  = var.create_bucket ? 1 : 0
  bucket = "alpha-bucket-${local.instance_name}"
  tags = {
    Name        = "alpha-bucket-${local.instance_name}"
    Environment = var.environment
    Role        = var.role
  }
}