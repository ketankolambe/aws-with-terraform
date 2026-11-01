data "terraform_remote_state" "vpc_backend" {
  backend = "s3"
  config = {
    bucket = "uk9172"
    key    = "terraform/day_07/networking/vpc/uat/terraform.tfstate"
    region = "ap-south-1"
  }
}