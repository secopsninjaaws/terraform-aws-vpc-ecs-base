resource "aws_route53_zone" "private" {
  count = var.service_connect_name == true ? 1 : 0
  name  = var.hosted_zone_name
  vpc {
    vpc_id = aws_vpc.main.id
  }
  tags = {
    Name = "${var.hosted_zone_name}"
  }

}

resource "aws_route53_record" "main" {
  count   = var.service_connect_name == true ? 1 : 0
  zone_id = aws_route53_zone.private[0].zone_id
  name    = "*.${aws_route53_zone.private[0].name}"
  type    = "A"
  alias {
    name                   = aws_alb.internal[0].dns_name
    zone_id                = aws_alb.internal[0].zone_id
    evaluate_target_health = true
  }

}