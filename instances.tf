resource "aws_instance" "bastion" {
  ami           = "ami-05b10e08d247fb927"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-bastion"
  }
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  subnet_id              = aws_subnet.public_subnet.id
}



resource "aws_instance" "application" {
  ami           = "ami-05b10e08d247fb927"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-application"
  }
  vpc_security_group_ids = [aws_security_group.second_sg.id]
  subnet_id              = aws_subnet.private_subnet.id
}





