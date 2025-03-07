variable vpc_cidr {
  type = string

}

variable region {
  type = string
}



variable "subnet_list" {
  type = list(object({
    name              = string
    cidr_block        = string
    type              = string
    availability_zone = string
  }))
}