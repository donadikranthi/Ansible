variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
}

variable "project_name" {
    description = "Name of the project"
    type        = string
}

variable "environment" {
    description = "Deployment environment (e.g., dev, prod)"
    type        = string
}

variable "vpc_tags" {
    description = "Tags to apply to the VPC"
    type        = map
    default     = {}
}