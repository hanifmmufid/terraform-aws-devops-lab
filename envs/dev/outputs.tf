output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value       = module.vpc.private_subnet_id
}

output "public_instance_id" {
  description = "Public EC2 instance ID"
  value       = module.ec2.public_instance_id
}

output "private_instance_id" {
  description = "Private EC2 instance ID"
  value       = module.ec2.private_instance_id
}

output "public_ip" {
  description = "Public IP public EC2"
  value       = module.ec2.public_ip
}

output "private_ip" {
  description = "Private IP private EC2"
  value       = module.ec2.private_ip
}

output "ssh_public_command" {
  description = "Command SSH ke public EC2"
  value       = "ssh -i ~/.ssh/aws-devops-lab ubuntu@${module.ec2.public_ip}"
}

output "ssh_private_via_bastion_command" {
  description = "Command SSH ke private EC2 via bastion"
  value       = "ssh -i ~/.ssh/aws-devops-lab -J ubuntu@${module.ec2.public_ip} ubuntu@${module.ec2.private_ip}"
}
