resource "aws_s3_bucket" "demo_bucket" {
  bucket = "personalspecial2012-s3s3"
}

resource "aws_s3_account_public_access_block" "public_access_block" {

block_public_acls = true
block_public_policy = true
}

resource "aws_s3_bucket_versioning" "s3_versioning" {
bucket = aws_s3_bucket.demo_bucket.id
versioning_configuration {
status = "Enabled"
}
}