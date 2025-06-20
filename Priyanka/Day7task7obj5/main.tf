resource "aws_instance" "testserver" {
    ami      = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
    }