resource "aws_lb_target_group" "web_tier" {
  name     = "web-app-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.clyde_vpc.id

  health_check {
    enabled = true
  }
}