resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-000ec6c25978d5999" 
  instance_type = "t2.micro"

  tags = {
    Name = "my-ec2-instance"
  }

}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
  default     = "t2.micro"
}  

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.my_ec2_instance.id
}