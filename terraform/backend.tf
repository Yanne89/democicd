terraform {
  backend "s3" {
    bucket         = "my-terraform-state-effulgence"            # Replace with your S3 bucket name
    key            = "webapp/terraform.tfstate" # Path to the state file in the bucket
    region         = "us-east-1"                              # Replace with your AWS region
    # dynamodb_table = "terraform-lock-table"                   # Replace with your DynamoDB table name
    encrypt        = true                                     # Encrypt the state file
  }
}