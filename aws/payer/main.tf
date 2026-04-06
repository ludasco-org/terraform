resource "aws_s3_bucket_versioning" "state_versioning" {
  bucket = "lance-prod-management-commercial"
  versioning_configuration {
    status = "Enabled"
  }
}