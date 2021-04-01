resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.cloud7-placesapp-dev-public-subnet1.id
  route_table_id = aws_route_table.public_route_table.id
}


resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.cloud7-placesapp-dev-public-subnet2.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.cloud7-placesapp-dev-private-subnet1.id
  route_table_id = aws_route_table.private_route_table1.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.cloud7-placesapp-dev-private-subnet2.id
  route_table_id = aws_route_table.private_route_table2.id
}


