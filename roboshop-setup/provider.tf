terraform {
  backend "s3" {
    bucket = "b51-tf-remote-state-bucket"
    key    = "robot/terraform.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
    region = "us-east-1"
}


