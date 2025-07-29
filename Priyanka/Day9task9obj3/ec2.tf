variable "environment" {
    default = "Dev"     
}

variable "role" {
    default = "WebServer"     
}   

variable "instance_number" {
    default = "01"     
}

locals {
    instance_name = "${var.environment}-${var.role}-${var.instance_number}" 
}

resource "aws_instance" "test_server" {
  ami           = "ami-02457590d33d576c3"
  instance_type = "t2.micro"
  tags = {
    Name = local.instance_name
    Environment = var.environment
    Role = var.role
  }
}       