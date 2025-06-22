variable "s3_bucket" {
  description = "This variable is used to create a s3 bucket."
    type        = string

}
variable "bucket_acl" {
  description = "This variable is used to set the ACL for the S3 bucket."
  type        = string
}