resource "aws_s3_bucket" "ronak-s3" {
  bucket = "Ronak-s3-Training"

  tags = var.tags
}

resource "aws_s3_bucket_acl" "ronak-acl" {
  bucket = aws_s3_bucket.ronak-s3.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "ronak-versioning" {
  bucket = aws_s3_bucket.ronak-s3.id
  versioning_configuration {
    status = "Enabled"
  }
}