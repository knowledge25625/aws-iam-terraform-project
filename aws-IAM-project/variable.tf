variable "aws_region" {
  type        = string
  description = "The AWS region to deploy resources into"
  default     = "us-east-1"
}

variable "iam_user_name" {
  type        = string
  description = "Name of the IAM user to create"
  default     = "sidu-aws-iam-lab"
}