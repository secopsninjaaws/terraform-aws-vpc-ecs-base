output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  # This output will return a list of subnet IDs
  description = "The IDs of the public subnets"
  value       = aws_subnet.public_subnets[*].id

}

output "private_subnet_ids" {
  # This output will return a list of subnet IDs
  description = "The IDs of the private subnets"
  value       = aws_subnet.private_subnets[*].id

}

output "public_listiner_arn" {
  description = "The ARN of the load balancer listiner_80"
  value       = var.public_alb == true ? aws_alb_listener.listiner_80[0].arn : ""
}

output "internal_listiner_arn" {
  description = "The ARN of the load balancer internal_listiner_80"
  value       = var.private_alb == true ? aws_alb_listener.internal_listiner_80[0].arn : ""

}
output "cluster_name" {
  description = "The name of the ECS cluster"
  value       = aws_ecs_cluster.main.name

}

output "service_connect_name" {
  description = "The Name of the service connect namespace"
  value       = aws_service_discovery_private_dns_namespace.main[0].name

}

output "service_connect_arn" {
  description = "The ARN of the service connect"
  value       = length(aws_service_discovery_private_dns_namespace.main) > 0 ? aws_service_discovery_private_dns_namespace.main[0].arn : ""

}

output "namespace_id" {
  description = "The ID of the service connect namespace"
  value       = length(aws_service_discovery_private_dns_namespace.main) > 0 ? aws_service_discovery_private_dns_namespace.main[0].id : ""

}