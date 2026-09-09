terraform {
  backend "s3" {
    bucket  = "uk9172"
    key     = "compute/day_04/remote-exec/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}