terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.30.0"
    }
  }
  backend "s3" {
    bucket = "pocsmarak"
    key    = "terraform-state"
    region = "ap-south-1"
  }
}