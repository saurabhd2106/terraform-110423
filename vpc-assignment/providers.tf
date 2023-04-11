terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.62.0"
    }
  }

  backend "s3" {

    bucket = "my-s3-bucket-terraform-89475t4343435"

    key = "state-file/terraform.tfstate"

    region = "us-east-1"

    dynamodb_table = "state-lock-saurabh"    
  }
}

provider "aws" {
  # Configuration options
}