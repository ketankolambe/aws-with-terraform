terraform {
 backend "s3" {
   bucket = "uk9172"
   key = "terraform/day_03/terraform.tfstate"
   region = "ap-south-1"
   encrypt = true
 }
}