provider "aws" {
  region     = var.region

}

resource "aws_vpc" "cloud7-placesapp-dev-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "cloud7-placesapp-dev-vpc"
    env = var.environment
  }
}





