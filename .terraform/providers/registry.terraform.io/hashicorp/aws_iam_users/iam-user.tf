resource "aws_iam_user" "users" {
  force_destroy = true
  name = var.project-sapphire-users[count.index]
  count = length(var.project-sapphire-users)
}