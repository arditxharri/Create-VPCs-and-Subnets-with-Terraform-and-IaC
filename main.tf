#Creating VPCs and Subnets with Terraform and IaC.

# Instruct Terrafrom ot use AWS plugin version 5.0 or above.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Specify region for VPC.
provider "aws" {
  region = "eu-west-1"
}


# Specify CIDR block and give it a name for easier identificaion.
resource "aws_vpc" "Ardit_VPC" {
  cidr_block = "172.16.0.0/20"

  tags = {
    Name = "Ardit VPC"
  }
}

# Create public and private subnets that will be used for your application. 
resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.Ardit_VPC.id
  cidr_block = "172.16.0.0/24"

  tags = {
    Name = "Ardit VPC public subnet"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.Ardit_VPC.id
  cidr_block = "172.16.1.0/24"

  tags = {
    Name = "Ardit VPC private subnet"
  }
}

# Create Internet Gateway IGW 
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.Ardit_VPC.id

  tags = {
    Name = "Ardit VPC IGW"
  }
}

# Create a routing table and accoise the public subnet with it to have access in the innternet.
resource "aws_route_table" "public_rtb" {
  vpc_id = aws_vpc.Ardit_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Ardit VPC Routing table"
  }
}
resource "aws_route_table_association" "public_subnet" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_rtb.id

  
}