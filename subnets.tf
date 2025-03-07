resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pub_subnet

  tags = {
    Name = "public_subnet"
  }
}



resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet

  tags = {
    Name = "private_subnet"
  }
}