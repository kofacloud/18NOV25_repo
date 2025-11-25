# Create a new ALB Target Group attachment
resource "aws_autoscaling_attachment" "example" {
  autoscaling_group_name = aws_autoscaling_group.web-tier-asg.id
  lb_target_group_arn    = aws_lb_target_group.web_tier.arn
}