locals {
  name_prefix = "main"
}

resource "aws_lb" "main_alb" {
  name               = var.alb_name
  internal           = var.alb_internal
  load_balancer_type = "application"
  security_groups    = var.alb_sg
  subnets            = var.public_subnet_ids

  enable_deletion_protection = true

  access_logs {
    bucket  = var.access_logs_bucket
    prefix  = var.access_logs_prefix
    enabled = var.access_logs_enabled
  }

  tags = {
    Name = "${local.name_prefix}"
  }
}