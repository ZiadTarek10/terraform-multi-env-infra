vpc_cidr = "10.0.0.0/16"

region = "eu-central-1"



subnet_list = [
  {
    name              = "public_subnet_az1"
    cidr_block        = "10.0.0.0/24"
    type              = "public"
    availability_zone = "eu-central-1a"
  },
  {
    name              = "public_subnet_az2"
    cidr_block        = "10.0.1.0/24"
    type              = "public"
    availability_zone = "eu-central-1b"
  },
  {
    name              = "private_subnet_az1"
    cidr_block        = "10.0.2.0/24"
    type              = "private"
    availability_zone = "eu-central-1a"
  },
  {
    name              = "private_subnet_az2"
    cidr_block        = "10.0.3.0/24"
    type              = "private"
    availability_zone = "eu-central-1b"
  }
]