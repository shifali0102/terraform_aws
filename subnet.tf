resource "aws_subnet" "cloud7-placesapp-dev-public-subnet1" {
  vpc_id     = aws_vpc.cloud7-placesapp-dev-vpc.id
  cidr_block = var.subnet_public_cidr1
  availability_zone = "us-east-1a"
  tags = {
    Name = "cloud7-placesapp-dev-public-subnet1"
    env = var.environment
  }
}

resource "aws_subnet" "cloud7-placesapp-dev-public-subnet2" {
  vpc_id     = aws_vpc.cloud7-placesapp-dev-vpc.id
  cidr_block = var.subnet_public_cidr2
  availability_zone = "us-east-1b"
  tags = {
    Name = "cloud7-placesapp-dev-public-subnet2"
    env = var.environment
  }
}

resource "aws_subnet" "cloud7-placesapp-dev-private-subnet1" {
  vpc_id     = aws_vpc.cloud7-placesapp-dev-vpc.id
  cidr_block = var.subnet_private_cidr1
  availability_zone = "us-east-1a"
  tags = {
    Name = "cloud7-placesapp-dev-private-subnet1"
    env = var.environment
  }
}

resource "aws_subnet" "cloud7-placesapp-dev-private-subnet2" {
  vpc_id     = aws_vpc.cloud7-placesapp-dev-vpc.id
  cidr_block = var.subnet_private_cidr2
  availability_zone = "us-east-1b"
  tags = {
    Name = "cloud7-placesapp-dev-private-subnet2"
    env = var.environment
  }
}

