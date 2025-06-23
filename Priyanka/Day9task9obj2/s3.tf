resource "aws_s3_bucket" "tomcat_bucket" {
  bucket = "myuniquetomcatbucket-${random_id.bucket_id.hex}"
  tags   = var.bucket_tags  
}   

resource "random_id" "bucket_id" {
  byte_length = 4
}
