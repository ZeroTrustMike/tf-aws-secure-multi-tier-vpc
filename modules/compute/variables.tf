variable "alb_name" {
  type = string
}

variable "alb_internal" {
  type = bool
}

variable "alb_sg" {
  type = list(string)
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "access_logs_bucket" {
  type = string
}

variable "access_logs_prefix" {
  type = string
}

variable "access_logs_enabled" {
  type = bool
}