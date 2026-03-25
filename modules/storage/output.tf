output "lb_logs" {
  description = "ID of lb logs bucket"
  value = aws_s3_bucket.lb_logs.id
}