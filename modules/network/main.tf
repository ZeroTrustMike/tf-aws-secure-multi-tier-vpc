resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  
  count = length(var.azs)
  cidr_block = var.public_subnet_cidrs
  availability_zone = var.azs

  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "170.0.0.128/25"

  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "170.0.1.0/25"

  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "170.0.1.128/25"

  tags = {
    Name = "Main"
  }
}