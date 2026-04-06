terraform {

  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
      configuration_aliases = [
        aws.primary
      ]
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
