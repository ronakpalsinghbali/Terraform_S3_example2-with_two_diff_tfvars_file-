resource "aws_s3_bucket" "ronak-s3" {
  bucket = "ronak-bucket-training"

  tags = var.tags
}

resource "aws_s3_bucket_versioning" "ronak-versioning" {
  bucket = aws_s3_bucket.ronak-s3.id
  versioning_configuration {
    status = "Enabled"
  }
}