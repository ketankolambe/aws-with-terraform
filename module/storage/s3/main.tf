resource "aws_s3_bucket" "s3_ex" {
  bucket = var.bucket_name


  tags = {
    Name        = var.bucket_tag
    Environment = var.Environment
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.s3_ex.id
  versioning_configuration {
    status = var.versioning
  }
}

####################################################
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.s3_ex.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [aws_s3_bucket_ownership_controls.example]

  bucket = aws_s3_bucket.s3_ex.id
  acl    = var.acl
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.s3_ex.id

  block_public_acls       = var.block_public_acls
  ignore_public_acls      = var.block_public_policy
  block_public_policy     = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}