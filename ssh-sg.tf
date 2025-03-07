resource "aws_security_group" "allow_ssh" {
  name        = "Allow SSH"
  description = "Allow SSH inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "SSH-SG"
  }
}


resource "aws_security_group_rule" "allow_ssh_rule" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.allow_ssh.id
  cidr_blocks       = ["0.0.0.0/0"]
}