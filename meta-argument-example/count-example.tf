terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.62.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_instance" "myEc2Machine" {

  ami = var.ami_name

  instance_type = var.instance_type

  count = length(var.Name)

  tags = {

    Name = var.Name[count.index]


  }

}