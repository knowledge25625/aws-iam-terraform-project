resource "aws_s3_bucket" "sidu_awsproject_1" {
  bucket = "sidu-awsproject-1" # All lowercase!

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket_ownership_controls" "bucket_ownership" {
  bucket = aws_s3_bucket.sidu_awsproject_1.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}