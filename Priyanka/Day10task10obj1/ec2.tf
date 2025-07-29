resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.ami_id.id
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance"
  } 
}  

data "aws_ami" "ami_id" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu-eks-pro/k8s_1.32/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}
