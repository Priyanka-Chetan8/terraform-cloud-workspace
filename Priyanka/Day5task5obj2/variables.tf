variable "ami_id" {
  description = "This variable is used for ami id definition."
}

variable "instance_type" {
  description = "The type of instance to use for the EC2 instance."
  type        = string
  default     = "t2.micro"
}
