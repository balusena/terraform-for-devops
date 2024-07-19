terraform {
  backend "s3" {
    bucket         = "balas-s3-demo-xyz" # change this with your s3 bucket
    key            = "balas/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}