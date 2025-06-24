locals {
  common_tags = {
    sg_name = "projpri_sg"
  }

  common_tags_web_server = {
    Name = "web-server"
  }

  instance_name = lower("${var.environment}-${var.role}-${var.instance_count}")
}