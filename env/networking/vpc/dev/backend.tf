terraform {
 backend "s3" {
   bucket = "uk9172"
   key = "terraform/day_09/env/net/vpc/dev/terraform.tfstate"
   region = "ap-south-1"
   encrypt = true
 }
}