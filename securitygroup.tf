resource "aws_security_group" "cloud7-placesapp-dev-frontend-SG" {
  name        = "cloud7-placesapp-dev-frontend-SG"
  description = "allow port 80 and 22"
  vpc_id      = aws_vpc.cloud7-placesapp-dev-vpc.id

  ingress {
    
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "cloud7-placesapp-dev-frontend-SG"
    env = var.environment
  }
}

resource "aws_security_group" "cloud7-placesapp-dev-database-SG" {
  name        = "cloud7-placesapp-dev-database-SG"
  description = "allow port 3306 and 22"
  vpc_id      = aws_vpc.cloud7-placesapp-dev-vpc.id

  ingress {
    
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    security_groups = [aws_security_group.cloud7-placesapp-dev-frontend-SG.id]
  }

  ingress {
    
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "cloud7-placesapp-dev-database-SG"
    env = var.environment
  }
}


