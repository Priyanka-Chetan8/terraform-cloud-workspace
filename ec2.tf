provider "aws" {
  region     = "us-east-1"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource "aws_instance" "firstec2" {
  ami           = "ami-02457590d33d576c3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform Server"
  }
}