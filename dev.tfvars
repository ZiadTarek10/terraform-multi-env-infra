vpc_cidr = "10.0.0.0/16"
region = "us-east-1"

subnet_list = [
  {
    name = "public_subnet"
    cidr_block = "10.0.0.0/24"
    type = "public"
  },
  {
    name = "private_subnet"
    cidr_block = "10.0.1.0/24"
    type = "private"
  }

]