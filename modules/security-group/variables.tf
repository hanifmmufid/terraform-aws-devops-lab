variable "project_name" {
  description = "Project name untuk tagging"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR yang boleh SSH ke public EC2"
  type        = string
}
