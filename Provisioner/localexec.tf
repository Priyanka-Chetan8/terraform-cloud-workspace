resource "aws_instance" "Webserver" {
  ami           = "ami-02457590d33d576c3"
  instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo \"Webserver is up and running\""
   }
}   
#   key_name      = "my-ec2-key.pem"

#   connection {
#     type        = "ssh"
#     user        = "ec2-user"
#     private_key = file("~/.ssh/my-ec2-key.pem") 
#     host        = self.public_ip   
#   }
#   provisioner "remote-exec" {
#     inline = [
#       "sudo yum update -y",
#       "sudo yum install -y httpd",
#       "sudo systemctl start httpd",
#       "sudo systemctl enable httpd",
#     ]
#   }

  

#   tags = {
#     Name        = "Webserver"
#   }
#}
    