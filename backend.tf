# This backend.tf file configures the remote backend for Terraform to use Amazon S3 for state file storage.


# /* ---*/ Make it a comment before running terraform apply, as DynamoDB and S3 will be created. After that, you can remove the comment.
# It ensures state consistency and locking using a DynamoDB table.


/*
terraform {
  backend "s3" {
    bucket         = "kalpesh-unique-s3-bucket-name-<BUCKET-SUFFIX>" # Update this after bucket creation
    dynamodb_table = "state-lock"
    key            = "mystatefile/terraform.tfstate"
    region         = "ap-south-1" # Variables can't be used because the backend must be configured before Terraform initialization
    encrypt        = true
  }
}
*/