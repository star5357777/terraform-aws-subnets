resource "aws_subnet" "subnet" {
  for_each = var.subnet
  vpc_id = var.vpc_id
  map_public_ip_on_launch = each.value.public_ip
  cidr_block = each.value.subnet_cidr
  availability_zone = each.value.az
  tags = {
    Name = each.value.subnet_name
  }
}



resource "aws_route_table" "route_table" {
  count = var.create_route_table ? 1 : 0
  vpc_id = var.vpc_id
  tags = var.create_route_table ? {
    Name = var.route_table_name
  } : {}
}
