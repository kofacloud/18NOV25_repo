# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "clyde_vpc" {
  cidr_block = "10.22.0.0/16" 
  enable_dns_support = true
  enable_dns_hostnames = true
   
  tags = {
    Name = "clyde_vpc"
    Service = "vpc"
    Owner = "Porter"
    Planet = "Portland"
  }
}