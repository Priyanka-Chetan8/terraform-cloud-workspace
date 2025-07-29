variable "launch_instance" {
  description = "Boolean to determine if the EC2 instance should be launched"
  type        = bool
  default     = true
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}