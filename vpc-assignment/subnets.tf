resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.myVpc.id

  cidr_block = var.cidr_public_subnet

  availability_zone = var.az1

  tags = {
    Name = "public_subnet-${var.name}"
  }
}


resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.myVpc.id

  cidr_block = var.cidr_private_subnet

  availability_zone = var.az2

  tags = {
    Name = "private_subnet-${var.name}"
  }
}