output "iam_user_arn" {
  description = "The ARN of the sidu-aws-iam-lab user"
  value       = aws_iam_user.this.arn
}

output "iam_user_name" {
  description = "The name of the sidu-aws-iam-lab user"
  value       = aws_iam_user.this.name
}