provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "server1" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.server1
  }
}

resource "aws_instance" "server2" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.server2
  }
}

resource "aws_instance" "server3" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.server3
  }
}

