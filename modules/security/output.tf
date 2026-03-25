output "alb_sg" {
  description = "ID of alb sg"
  value = aws_security_group.alb_sg.id
}