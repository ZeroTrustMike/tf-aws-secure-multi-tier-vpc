resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  
  count = length(var.azs)
  cidr_block = var.public_subnet_cidrs[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "Main-${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.main.id

  count = length(var.azs)
  cidr_block = var.private_subnet_cidrs[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "Main-${count.index + 1}"
  }
}
