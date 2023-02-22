terraform {
  backend "s3" {
    region  = "us-east-1"
    bucket  = "bucket-name"
    encrypt = "true"
    key     = "terraform.tfstate"
  }
}
