resource "aws_subnet" "subnet" {
  for_each = { for subnet in var.subnet_list : subnet.name => subnet }
  vpc_id     = aws_vpc.main.id
  cidr_block = each.value.cidr_block

  map_public_ip_on_launch = each.value.type == "public" ? true : false

  tags = {
    Name = each.value.name
  }
}

