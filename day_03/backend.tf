terraform {
 backend "s3" {
   bucket = "uk9172"
   key = "compute/day_03/terraform.tfstate"
   region = "ap-south-1"
   encrypt = true
 }
}