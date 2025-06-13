terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.0.0"
    }
  }
}

provider "github" {
  token = var.github_token
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

resource "github_repository" "terraform_second_repo" {
  name        = "terraform-demo"
  description = "Terraform-managed Github repository"
  visibility  = "public"
}