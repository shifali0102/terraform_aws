resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.cloud7-placesapp-dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloud7-placesapp-igw.id
  }

  tags = {
    Name = "cloud7-placesapp-dev-public_route_table"
    env = var.environment
  }
}

#to be attached to nat gateway of one region
resource "aws_route_table" "private_route_table1" {
  vpc_id = aws_vpc.cloud7-placesapp-dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloud7-placesapp-igw.id
  }

  tags = {
    Name = "cloud7-placesapp-dev-private_route_table1"
    env = var.environment
  }
}

#to be attached to nat gateway of another region
resource "aws_route_table" "private_route_table2" {
  vpc_id = aws_vpc.cloud7-placesapp-dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloud7-placesapp-igw.id
  }

  tags = {
    Name = "cloud7-placesapp-dev-private_route_table2"
    env = var.environment
  }
}


