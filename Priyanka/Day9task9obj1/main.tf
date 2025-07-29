resource aws_security_group "my_security_group" {
  name        = "dynamic_ingress_security_group"
  description = "Security group with dynamic ingress rules based on tags"
  vpc_id      = var.vpc_id
  
  dynamic "ingress" {
    for_each = var.allowed_ports 
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]   
  }

  tags = {
    Name = "dynamic_ingress_security_group"
  }
}
