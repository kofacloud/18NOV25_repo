output "lb_url" {
    value = aws_lb.test_web_tier_lb.dns_name
}