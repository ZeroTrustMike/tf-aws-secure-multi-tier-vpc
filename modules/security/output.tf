output "alb_sg_id" {
  description = "ID of alb sg"
  value = aws_security_group.alb_sg.id
}