terraform {

  backend "s3" {
    bucket                   = "ngp-terraform-state"
    key                      = "terraform-aws-sandbox"
    region                   = "us-east-1"
    profile                  = "aws-dev"
    shared_credentials_files = ["~/.aws/credentials"]
  }
  required_version = "~> 1.8.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.46.0"
    }    
    random = {
      source  = "hashicorp/random"
      version = ">= 2.0"
    }
  }
}
provider "aws" {
  region                    = "us-east-1"
  shared_credentials_files  = ["~/.aws/credentials"]
  profile                   = "aws-dev"

  # Make it faster by skipping something
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
}
