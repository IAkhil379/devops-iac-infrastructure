variable "aws_region" {
  type        = string
  description = "The target AWS Region for all resources"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Deployment environment name tagging"
  default     = "production"
}

variable "vpc_cidr" {
  type        = string
  description = "Base CIDR range allocation for the VPC"
  default     = "10.0.0.0/16"
}
