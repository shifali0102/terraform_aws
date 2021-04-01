

resource "aws_instance" "cloud7-placesapp-dev-ec2" {  //name is manadatory
    ami  = "ami-013f17f36f8b1fefb"
    instance_type = var.ec2_type
    count = var.instance_count
    subnet_id = aws_subnet.cloud7-placesapp-dev-public-subnet1.id
    vpc_security_group_ids = [aws_security_group.cloud7-placesapp-dev-frontend-SG.id]
    iam_instance_profile = aws_iam_instance_profile.s3_access_role.name
    associate_public_ip_address = true
    tags = {
        Name = "${var.tagname}-${count.index + 1}"
        env = var.environment
    }
    key_name = "terraform"
}

resource "aws_key_pair" "terraform"{
    key_name = "terraform"
    public_key = file("cloud7.pub")
}

resource "aws_db_instance" "cloud7-placesapp-dev-flaskdb-rds" {
    engine = var.rds["engine"]
    allocated_storage = var.rds["allocated_storage"]
    engine_version = var.rds["engine_version"]
    instance_class = var.rds["instance_class"]
    name = var.rds["name"]
    username = var.rds["username"] 
    password = var.rds["password"]
    parameter_group_name = var.rds["parameter_group_name"]
    skip_final_snapshot= var.rds["skip_final_snapshot"]
    vpc_security_group_ids = [aws_security_group.cloud7-placesapp-dev-database-SG.id]
    db_subnet_group_name = aws_db_subnet_group.cloud7-placesapp-dev-flaskdb-rds-sg.name
    tags = {
        Name = "cloud7-placesapp-dev-flaskdb-rds"
        env = var.environment
    }

}

resource "aws_db_subnet_group" "cloud7-placesapp-dev-flaskdb-rds-sg" {
  name       = "cloud7-placesapp-dev-flaskdb-rds-sg"
  subnet_ids = [aws_subnet.cloud7-placesapp-dev-private-subnet1.id,aws_subnet.cloud7-placesapp-dev-private-subnet2.id]

  tags = {
    Name = "My DB subnet group"
  }
}