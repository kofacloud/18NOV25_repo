# Web Server Security Group
resource "aws_security_group" "clyde_web_alb_sg" {
  name        = "web_alb_sg"
  description = "Allow HTTP for web tier ALB"
  vpc_id      = aws_vpc.clyde_vpc.id

  tags = {
    Name = "clyde_web_ALB_sg"
    Tier = "web"
  }
}

resource "aws_vpc_security_group_ingress_rule" "clyde_web_alb_http" {
  security_group_id = aws_security_group.clyde_web_alb_sg.id
  description       = "HTTP Allow"
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "clyde_web_alb_outbound" {
  security_group_id = aws_security_group.clyde_web_alb_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}