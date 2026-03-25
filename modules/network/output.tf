output "vpc_id" {
  description = "ID of the vpc"
  value = aws_vpc.main.id
}

output "network_sg" {
  description = "ID of the sg of vpc"
  value = aws_security_group.network_sg.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value = aws_subnet.public_subnet[*].id
}