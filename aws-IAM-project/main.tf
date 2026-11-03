# Create an IAM User named after your lab
resource "aws_iam_user" "this" {
  name = var.iam_user_name
  tags = {
    Environment = "Portfolio"
    ManagedBy   = "Terraform"
    Project     = "Sidu AWS IAM Lab"
  }
}

# Create a restricted Custom IAM Policy for the lab
resource "aws_iam_policy" "s3_readonly_policy" {
  name        = "${var.iam_user_name}-s3-readonly"
  description = "Allows read-only access for the sidu-aws-iam-lab project"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:Get*",
          "s3:List*"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

# Attach the policy to your lab IAM user
resource "aws_iam_user_policy_attachment" "attach_s3_readonly" {
  user       = aws_iam_user.this.name
  policy_arn = aws_iam_policy.s3_readonly_policy.arn
}