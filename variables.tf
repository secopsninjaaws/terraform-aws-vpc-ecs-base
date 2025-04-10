variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "subnets_count" {
  type        = number
  description = "The number of subnets to create"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "cluster_name" {
  type        = string
  description = "The name of the ECS cluster"

}

variable "alb_internal" {
  type        = string
  description = "The category of the ALB (internal or external)"
  default     = "false"
}