variable "aws_region" {
  description = "AWS region untuk DevOps lab"
  type        = string
  default     = "ap-southeast-1"
}

variable "project_name" {
  description = "Nama project untuk tagging resource"
  type        = string
  default     = "devops-lab"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ssh_public_key_path" {
  description = "Path public key SSH untuk EC2"
  type        = string
  default     = "~/.ssh/aws-devops-lab.pub"
}

variable "allowed_ssh_cidr" {
  description = "CIDR yang boleh SSH ke EC2"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block untuk VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block untuk public subnet"
  type        = string
  default     = "10.0.1.0/24"
}
