output "lb_sg" {
  description = "ID of lb sg"
  value = aws_security_group.lb_sg.id
}