##Creating VPCs and Subnets with Terraform and IaC##

What we will create:
    1. A VPC with CIDR block 172.16.0.0/20
    2. One public subnet with CIDR block 172.16.0.0/24
    3. One private subnet with a CIDR block of 172.16.1.0/24
    4. One Internet Gateway
    5. One public route table with a route to the Internet Gateway, and the correct association between the public subnet and the public route table.

Don't forget to put your AWS credentials on .env file and add the .env file to the .gitignore list