terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.95.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_iam_user" "demotest_user" {
  name = "terraform_pri-user"
  tags = {
    Purpose = "Managed by Terraform"
  }
}