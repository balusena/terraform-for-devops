provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-043b0g54c289bmk90" # change this
  subnet_id = "subnet-079jb91es9b1432e7" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "balas-s3-demo-xyz" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}