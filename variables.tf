variable "vpc_id" {
	type = string
}

variable "subnet" {
  type = map(object({
    subnet_cidr = string
    az = string
    public_ip = bool
    subnet_name = string
  }))
}


variable "create_route_table" {
  default = true
}


variable "route_table_name" {
  type    = string
  default = null
}
