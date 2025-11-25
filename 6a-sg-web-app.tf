# Web Server Security Group
resource "aws_security_group" "clyde_web_server" {
  name        = "clyde_web_server_sg"
  description = "Allow HTTP and SSH for web server"
  vpc_id      = aws_vpc.clyde_vpc.id

  tags = {
    Name = "clyde_web_server_sg"
    Tier = "web"
  }
}

resource "aws_vpc_security_group_ingress_rule" "clyde_web_server_http" {
  security_group_id = aws_security_group.clyde_web_server.id
  description       = "HTTP from Internet"
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "clyde_web_server_ssh" {
  security_group_id = aws_security_group.clyde_web_server.id
  description      = "SSH from Internet"
  cidr_ipv4         = "10.22.0.0/16"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "clyde_web_server_egress" {
  security_group_id = aws_security_group.clyde_web_server.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}