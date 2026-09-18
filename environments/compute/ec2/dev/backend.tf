terraform {
 backend "s3" {
   bucket = "uk9172"
   key = "terraform/day_07/compute/ec2/dev/terraform.tfstate"
   region = "ap-south-1"
   encrypt = true
 }
}