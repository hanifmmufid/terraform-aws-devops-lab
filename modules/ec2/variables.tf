variable "project_name" {
  description = "Project name untuk tagging"
  type        = string
}

variable "ami_id" {
  description = "AMI ID untuk EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID"
  type        = string
}

variable "private_subnet_id" {
  description = "Private subnet ID"
  type        = string
}

variable "public_security_group_id" {
  description = "Public security group ID"
  type        = string
}

variable "private_security_group_id" {
  description = "Private security group ID"
  type        = string
}

variable "root_volume_size" {
  description = "Root volume size in GB"
  type        = number
  default     = 10
}
