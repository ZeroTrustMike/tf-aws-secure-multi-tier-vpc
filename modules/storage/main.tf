locals {
  name_prefix = "main"
}

resource "aws_s3_bucket" "lb_logs" {
  bucket = "${var.project_name}-${var.environment}-lb-logs"

  tags = {
    Name        = "${local.name_prefix}"
  }
}