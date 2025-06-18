resource "aws_instance" "demoec2" {
  ami           = "ami-02457590d33d576c3"
  instance_type = "t2.micro"   

  tags = {
    Name = "demoserver2"
  }
}