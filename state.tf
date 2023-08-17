terraform {
  backend "s3" {
    bucket = "bucketforterraform1"
    key    = "roboshop/terraform.tfstate"
    region = "us-east-1"
  }
}