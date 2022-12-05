terraform {
  backend "s3" {
    bucket = "b51-tf-remote-state-bucket"
    key    = "sample2/terraform.tfstate"
    region = "us-east-1"
  }
}
