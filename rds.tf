resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}

resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [
    aws_subnet.subnet["private_subnet_az1"].id,
    aws_subnet.subnet["private_subnet_az2"].id
  ]

  tags = {
    Name = "My DB subnet group"
  }
}
