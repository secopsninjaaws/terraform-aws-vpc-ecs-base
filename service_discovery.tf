resource "aws_service_discovery_private_dns_namespace" "main" {
  count       = var.service_connect == true ? 1 : 0
  name        = var.service_connect_name
  vpc         = aws_vpc.main.id
  description = "Private DNS namespace for ${var.service_connect_name}"
  tags = {
    Name = "${var.service_connect_name}"
  }
}
