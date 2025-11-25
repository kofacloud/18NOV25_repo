resource "aws_lb_listener" "test_web_tier_lb" {
  load_balancer_arn = aws_lb.test_web_tier_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web_tier.arn
  }
}