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

provider "vault" {

  address = "http://127.0.0.1:8200"

  token = "hvs.dQLzvVV1N7nWtKQKN5b5vdIy"
  
}

data "vault_generic_secret" "demo" {

  path = "secret/aws_secret" 

}

output "access_key" {

  value = data.vault_generic_secret.demo.data.access_key

  sensitive = true
}

output "secret_key" {

  value = data.vault_generic_secret.demo.data.secret_key

  sensitive = true

}