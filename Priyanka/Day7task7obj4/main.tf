resource "aws_iam_user" "user1" {
  count = var.create_user ? 1 : 0
  name  = "user1"

  tags = {
    Name = "user1"
  }
}

output "user1_arn" {
  value = aws_iam_user.user1[0].arn
}

