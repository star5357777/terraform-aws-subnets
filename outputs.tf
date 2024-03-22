output "subnet_id" {
	value = [for i in aws_subnet.subnet : i.id]
}

output "subnet_cidr" {
	value = [for k in aws_subnet.subnet : k.cidr_block]
}

output "route_table_id" {
	value = [for k in aws_route_table.route_table : k.id]
}

output "subnet_az" {
	value = [for k in aws_subnet.subnet : k.availability_zone]
}