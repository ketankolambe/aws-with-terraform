terraform {
 backend "s3" {
   bucket = "uk9172"
   key = "terraform/day_s3/storage/s3/dev/terraform.tfstate"
   region = "ap-south-1"
   encrypt = true
 }
}