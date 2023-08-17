terraform {
  backend "s3" {
    bucket = "bucketforterraform1"
    key    = "roboshop/dev/terraform.tfstate"
    region = "us-east-1"
  }
}