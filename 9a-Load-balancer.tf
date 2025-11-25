resource "aws_lb" "test_web_tier_lb" {
  name               = "web-tier-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.clyde_web_alb_sg.id]
  subnets            = [aws_subnet.public-us-west-2a.id,
                        aws_subnet.public-us-west-2b.id,
                        aws_subnet.public-us-west-2c.id]

# IMPORTANT
  enable_deletion_protection = false

  tags = {
    Environment = "web-tier-lb"
  }
}