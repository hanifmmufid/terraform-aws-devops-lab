variable "project_name" {
  description = "Project name untuk tagging"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block untuk VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block untuk public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block untuk private subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone untuk subnet"
  type        = string
}
