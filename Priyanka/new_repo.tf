provider "github" {
  token = var.github_token
}

variable "github_token" {
  description = "GitHub personal access token"
  type        = string
  sensitive   = true
}

resource "github_repository" "terraform_form_repo" {
  name        = "terraform-form"
  description = "Terraform-managed Github repository"
  visibility  = "public"
}