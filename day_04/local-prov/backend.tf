terraform {
  backend "s3" {
    bucket  = "uk9172"
    key     = "terraform/day_04/local-prov/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}