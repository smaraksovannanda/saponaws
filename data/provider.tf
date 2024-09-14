terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.30.0"
    }
  }
  # backend "s3" {
  #   bucket = "deloitte-cms-terraform-backend-do-not-delete"
  #   key    = "corning-terraform-state"
  #   region = "us-east-1"
  # }
}