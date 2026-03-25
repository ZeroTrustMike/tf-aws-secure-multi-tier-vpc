terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "network" {
  source = "../../modules/network"
    
  vpc_cidr_block = var.vpc_cidr_block
  azs = var.azs
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  vpc_ingress = var.vpc_ingress
  vpc_egress = var.vpc_egress
}

module "compute" {
  source = "../../modules/compute"

  alb_name = var.alb_name
  alb_internal = var.alb_internal
  alb_sg = [module.network.network_sg]
  public_subnet_ids = module.network.public_subnet_ids
  access_logs_prefix = var.access_logs_prefix
  access_logs_enabled = var.access_logs_enabled
  access_logs_bucket = module.storage.lb_logs
}

module "storage" {
  source = "../../modules/storage"

  project_name = var.project_name
  environment = var.environment
}