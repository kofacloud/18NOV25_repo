resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.clyde_vpc.id

  tags = {
    Name    = "clyde_IGW"
    Service = "application1"
    Owner   = "Porter"
    Planet  = "Portland"
  }
}