variable "instance_type" {
  description = "This variable is used to set the instance type for the EC2 instance."
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "This variable is used to set the AMI ID for the EC2 instance."
  type        = string
  default     = "ami-02457590d33d576c3"
}

variable "tags" {
  description = "This variable is used to set the tags for the EC2 instance."
  type        = map(string)
  default     = {
    Name = "Server1"
  }
}