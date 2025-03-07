resource "aws_security_group" "second_sg" {
  name        = "Allow SSH and port 3000 from vpc cidr only"
  description = "Allow SSH and port 3000 from vpc cidr only"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "second-sg"
  }
}

#Allow the port 3000
resource "aws_security_group_rule" "allow_port_3000" {
  type              = "ingress"
  from_port         = 3000
  to_port           = 3000
  protocol          = "tcp"
  security_group_id = aws_security_group.second_sg.id
  cidr_blocks       = [aws_vpc.main.cidr_block]
}

#Allow SSH 
resource "aws_security_group_rule" "allow_ssh_v2" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.second_sg.id
  cidr_blocks       = [aws_vpc.main.cidr_block]
}