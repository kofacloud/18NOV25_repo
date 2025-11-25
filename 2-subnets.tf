#These are   for  public

resource "aws_subnet" "public-us-west-2a" {
  vpc_id                  = aws_vpc.clyde_vpc.id
  cidr_block              = "10.22.1.0/24"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-2a"
    Service = "clyde_vpc"
    Owner   = "Porter"
    Planet  = "Portland"
  }
}

resource "aws_subnet" "public-us-west-2b" {
  vpc_id                  = aws_vpc.clyde_vpc.id
  cidr_block              = "10.22.2.0/24"
  availability_zone       = "us-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-2b"
    Service = "clyde_vpc"
    Owner   = "Porter"
    Planet  = "Portland"
  }
}

resource "aws_subnet" "public-us-west-2c" {
  vpc_id                  = aws_vpc.clyde_vpc.id
  cidr_block              = "10.22.3.0/24"
  availability_zone       = "us-west-2c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-2c"
    Service = "clyde_vpc"
    Owner   = "Porter"
    Planet  = "Portland"
  }
}

#these are for private
resource "aws_subnet" "private-us-west-2a" {
  vpc_id            = aws_vpc.clyde_vpc.id
  cidr_block        = "10.22.11.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name    = "us-west-2a"
    Service = "clyde_vpc"
    Owner   = "Porter"
    Planet  = "Portland"
  }
}

resource "aws_subnet" "private-us-west-2b" {
  vpc_id            = aws_vpc.clyde_vpc.id
  cidr_block        = "10.22.12.0/24"
  availability_zone = "us-west-2b"

  tags = {
    Name    = "private-us-west-2b"
    Service = "clyde_vpc"
    Owner   = "Porter"
    Planet  = "Portland"
  }
}


resource "aws_subnet" "private-us-west-2c" {
  vpc_id            = aws_vpc.clyde_vpc.id
  cidr_block        = "10.22.13.0/24"
  availability_zone = "us-west-2c"

  tags = {
    Name    = "private-us-west-2c"
    Service = "clyde_vpc"
    Owner   = "Porter"
    Planet  = "Portland"
  }
}