resource "aws_s3_bucket" "create_bucket" {
  bucket = "${var.name}"

  tags = {
    Name        = "Bucket for EMR Bootstrap actions/Steps"
    Environment = "Scripts"
  }
}

resource "aws_s3_bucket_ownership_controls" "create_bucket" {
  bucket = aws_s3_bucket.create_bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "create_bucket" {
  depends_on = [aws_s3_bucket_ownership_controls.create_bucket]

  bucket = aws_s3_bucket.create_bucket.id
  acl    = "private"
}

resource "aws_s3_object" "bootstrap_action_file" {
  bucket     = "${var.name}"
  key        = "scripts/bootstrap_actions.sh"
  source     = "scripts/bootstrap_actions.sh"
  depends_on = [aws_s3_bucket.create_bucket]
}

resource "aws_s3_object" "pyspark_quick_setup_file" {
  bucket     = "${var.name}"
  key        = "scripts/pyspark_quick_setup.sh"
  source     = "scripts/pyspark_quick_setup.sh"
  depends_on = [aws_s3_bucket.create_bucket]
}
