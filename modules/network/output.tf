output "vpc_id" {
  description = "ID of the vpc"
  value = aws_vpc.main.id
}

output "vpc_sg_id" {
  description = "ID of the sg of vpc"
  value = aws_security_group.allow_tls.id
}