output "info_for_s3" {
  value = aws_s3_bucket.ronak-s3.acl
  description = "ACL of the bucket:"
}