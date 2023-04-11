resource "aws_vpc" "myVpc" {
  cidr_block       = var.cidr_default
  instance_tenancy = "default"

  tags = {
    Name = "myVpc-${var.name}"
  }
}