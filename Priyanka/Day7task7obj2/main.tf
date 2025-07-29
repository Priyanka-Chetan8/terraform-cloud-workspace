resource "aws_instance" "myec2_instance" {
    count         = var.launch_instance ? 1 : 0
    ami           = var.ami_id
    instance_type = "t2.micro"
    tags = {
        Name = "MyEC2Instance"      
  }
}