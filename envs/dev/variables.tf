variable "aws_region" {
  description = "AWS region untuk DevOps lab"
  type        = string
  default     = "ap-southeast-1"
}

variable "project_name" {
  description = "Nama project untuk tagging resource"
  type        = string
  default     = "devops-lab-dev"
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
  default     = "10.10.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block untuk public subnet"
  type        = string
  default     = "10.10.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block untuk private subnet"
  type        = string
  default     = "10.10.2.0/24"
}

variable "root_volume_size" {
  description = "Root volume size EC2 in GB"
  type        = number
  default     = 10
}

variable "ssh_public_key_content" {
  description = "Isi public key SSH. Dipakai CI agar tidak perlu file lokal."
  type        = string
  default     = null
}
