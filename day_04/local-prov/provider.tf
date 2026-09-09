terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.3.0"
    }
  }
  required_version = ">= 1.2"
}
provider "aws" {
  region = "ap-south-1"
}

