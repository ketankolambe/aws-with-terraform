module "s3_module" {
source = "../../../module/storage/s3"
  bucket_name = var.bucket_name
  Environment = var.Environment
  bucket_tag = var.bucket_tag
  versioning = var.versioning
  acl = var.acl
  block_public_acls = var.block_public_acls
  ignore_public_acls = var.ignore_public_acls
  block_public_policy = var.block_public_policy
  restrict_public_buckets = var.restrict_public_buckets
}