# Public Route Table
# Routes traffic from public subnets to the internet gateway
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.clyde_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "clyde-public-rt"
    Type = "Public"
  }
}

# Private Route Table
# Routes traffic from private subnets to the NAT gateway
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.clyde_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main.id
  }

  tags = {
    Name = "clyde-private-rt"
    Type = "Private"
  }
}



# Route table associations for public subnets
resource "aws_route_table_association" "public-us-west-2a" {
  subnet_id      = aws_subnet.public-us-west-2a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-us-west-2b" {
  subnet_id      = aws_subnet.public-us-west-2b.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-us-west-2c" {
  subnet_id      = aws_subnet.public-us-west-2c.id
  route_table_id = aws_route_table.public.id
}

# Route table associations for private subnets
resource "aws_route_table_association" "private-us-west-2a" {
  subnet_id      = aws_subnet.private-us-west-2a.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-us-west-2b" {
  subnet_id      = aws_subnet.private-us-west-2b.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-us-west-2c" {
  subnet_id      = aws_subnet.private-us-west-2c.id
  route_table_id = aws_route_table.private.id
}