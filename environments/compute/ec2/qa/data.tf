data "terraform_remote_state" "vpc_backend" {
  backend = "s3"
  config = {
    bucket = "uk9172"
    key    = "terraform/day_07/networking/vpc/qa/terraform.tfstate"
    region = "ap-south-1"
  }
}