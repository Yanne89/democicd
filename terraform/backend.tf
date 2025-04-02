terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"            # Replace with your S3 bucket name
    key            = "aws-autoscale-webapp/terraform.tfstate" # Path to the state file in the bucket
    region         = "us-east-1"                              # Replace with your AWS region
    dynamodb_table = "terraform-lock-table"                   # Replace with your DynamoDB table name
    encrypt        = true                                     # Encrypt the state file
  }
}