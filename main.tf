terraform {

  required_version = ">= 1.12.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }

  backend "s3" {
    bucket  = "lance-prod-management-commercial"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

# Default provider
provider "aws" {
  region = us-east-1
}

# Add a test resource so the plan has something to do
resource "aws_s3_bucket_versioning" "state_versioning" {
  bucket = "lance-prod-management-commercial"
  versioning_configuration {
    status = "Enabled"
  }
}