variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "region" {
  type        = string
  description = "The AWS region to deploy the VPC"
  default     = "us-east-1"

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

variable "public_alb" {
  type        = bool
  description = "The category of the ALB (internal or external)"
  default     = true
}
variable "private_alb" {
  type        = bool
  description = "The category of the ALB (internal or external)"
  default     = false
}

variable "service_name" {
  type        = string
  description = "The name of the service"
  default     = ""
}

variable "service_connect" {
  type        = bool
  description = "Enable service sevice_connect"
  default     = false

}

variable "service_connect_name" {
  type        = string
  description = "The name of the service connect namespace"
  default     = ""

}

variable "hosted_zone_name" {
  type        = string
  description = "The name of the hosted zone"
  default     = ""

}