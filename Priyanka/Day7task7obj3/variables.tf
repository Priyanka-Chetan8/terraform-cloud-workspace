variable "bucket_names" {
  description = "List of the bucket names"
  type        = list(string)
}

variable "env_suffix" {
  description = "Suffix to append to each bucket name (e.g., dev, prod)"
  type        = string
}
