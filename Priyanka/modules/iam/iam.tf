terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

resource "aws_iam_user" "my_iam_user" {
  name = "var.iam_user_name"  

  tags = {
    Name = "var.iam_user_name"
  }
}  
variable "iam_user_name" {
  description = "Name of the IAM user"
  type        = string
  default     = "my-iam-user"
}
output "iam_user_id" {
  description = "The ID of the IAM user"
  value       = aws_iam_user.my_iam_user.id
}