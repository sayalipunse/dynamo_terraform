provider "aws" {
  region  = var.region
  profile = "default"
}


resource "aws_s3_bucket" "my-bucket" {
  bucket = "pillas3-terraform_1"
  acl    = "private"


}

terraform {

  backend "s3" {
    //access_key = var.access_key
    //secret_key = var.secret_key
    bucket     = "pillas3-terraform"
    key        = "pillas3/terraform.tfstate"
    region     = "us-west-2"
    dynamodb_table = "cpillas3-dynamodb"
  }
  
}


resource "aws_dynamodb_table" "client_data" {
  name = "cpillas3-dynamodb_1"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

