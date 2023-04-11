resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myVpc.id

  tags = {
    Name = "in-gw-${var.name}"
  }
}