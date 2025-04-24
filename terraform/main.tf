provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
     Name = "three-tier-vpc"
  }
   
  }
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "three-tier-igw"
  }
}