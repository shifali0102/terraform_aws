
resource "aws_internet_gateway" "cloud7-placesapp-igw" {
  vpc_id = aws_vpc.cloud7-placesapp-dev-vpc.id

  tags = {
    Name = "cloud7-placesapp-igw"
    env = var.environment
  }
}
