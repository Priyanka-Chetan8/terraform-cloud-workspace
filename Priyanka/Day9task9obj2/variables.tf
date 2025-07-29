variable "bucket_tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {
    Environment = "Dev"
    Owner       = "team-a"
    Project     = "demo-app"                
  }
}