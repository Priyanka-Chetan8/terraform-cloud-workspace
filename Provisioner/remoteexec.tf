resource "aws_instance" "webserver2" {
  ami           = "ami-000ec6c25978d5999"
  instance_type = "t2.micro"
  key_name      = "my-ec2-key"
  vpc_security_group_ids = [aws_security_group.ssh_configure.id]

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("~/.ssh/my-ec2-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras install nginx1 -y",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
    ]
  }

  tags = {
    Name = "webserverWithRemoteExec"
  }
}

resource "aws_security_group" "ssh_configure" {
  name        = "ssh-config"
  description = "Allow SSH inbound traffic"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["223.181.110.10/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}