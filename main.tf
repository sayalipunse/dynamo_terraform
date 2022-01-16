provider "aws" {
  region  = var.region
  profile = "default"
}


resource "aws_s3_bucket" "b2000000000pilla" {
  bucket = "pillas3"
  acl    = "private"


}

resource "aws_dynamodb_table" "client_data" {
  name = "client_csv_file"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "company_name"

  attribute {
    name = "company_name"
    type = "S"
  }
}

