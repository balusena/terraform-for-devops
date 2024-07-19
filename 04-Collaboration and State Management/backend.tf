terraform {
  backend "s3" {
    bucket         = "balas-s3-demo-xyz" # change this
    key            = "balas/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}