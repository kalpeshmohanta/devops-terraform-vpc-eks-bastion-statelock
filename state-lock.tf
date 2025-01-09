# Remote Storage of State file in S3 and Locking with DynamoDB

# Generates a random string of 10 characters
resource "random_string" "bucket_suffix" {
   length  = 10
   special = false
   upper   = false
   number = true
   lower   = true
}

# Create S3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = "kalpesh-unique-s3-bucket-name-${random_string.bucket_suffix.result}"
}

# Enable versioning
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.mybucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Enable server-side encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.mybucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}


# create DynamoDB

resource "aws_dynamodb_table" "statelock"{
        name = "state-lock"
        billing_mode = "PAY_PER_REQUEST"
        hash_key = "LockID"

        attribute {
                name = "LockID"
                type = "S"
        }
}