resource "aws_s3_bucket" "my-react-app-bucket" {
    bucket = "my-react-app-bucket"
}

resource "aws_s3_bucket_ownership_controls" "s3-ownership" {
  bucket = aws_s3_bucket.my-react-app-bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}