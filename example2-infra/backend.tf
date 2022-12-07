terraform {
  backend "s3" {
    bucket = "b51-tf-remote-state-bucket"
    key    = "example2/terraform.tfstate"
    region = "us-east-1"
  }
}