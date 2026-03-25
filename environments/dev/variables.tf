variable "region" {
  type = string
}

##network
variable "vpc_cidr_block" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "vpc_ingress" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "vpc_egress" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

##compute
variable "alb_name" {
  type = string
}

variable "alb_internal" {
  type = bool
}

variable "access_logs_prefix" {
  type = string
}

variable "access_logs_enabled" {
  type = bool
}

##storage
variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}