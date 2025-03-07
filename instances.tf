resource "aws_instance" "bastion" {
  for_each = { for index, subnet in var.subnet_list : subnet.name => subnet }

  ami           = "ami-05b10e08d247fb927"
  instance_type = "t2.micro"
  
  tags = {
    Name = "terraform-bastion-${each.key}"
  }

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id              = aws_subnet.subnet[each.key].id
}







