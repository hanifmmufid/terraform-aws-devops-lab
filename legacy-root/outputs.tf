output "vpc_id" {
  description = "Custom VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value       = aws_subnet.private.id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.this.id
}

output "public_route_table_id" {
  description = "Public route table ID"
  value       = aws_route_table.public.id
}

output "private_route_table_id" {
  description = "Private route table ID"
  value       = aws_route_table.private.id
}

output "public_instance_id" {
  description = "Public EC2 instance ID"
  value       = aws_instance.public.id
}

output "private_instance_id" {
  description = "Private EC2 instance ID"
  value       = aws_instance.private.id
}

output "public_ip" {
  description = "Public IP public EC2"
  value       = aws_instance.public.public_ip
}

output "private_ip" {
  description = "Private IP private EC2"
  value       = aws_instance.private.private_ip
}

output "ssh_public_command" {
  description = "Command untuk SSH ke public EC2"
  value       = "ssh -i ~/.ssh/aws-devops-lab ubuntu@${aws_instance.public.public_ip}"
}

output "ssh_private_via_bastion_command" {
  description = "Command untuk SSH ke private EC2 via public EC2 bastion"
  value       = "ssh -i ~/.ssh/aws-devops-lab -J ubuntu@${aws_instance.public.public_ip} ubuntu@${aws_instance.private.private_ip}"
}

output "public_security_group_id" {
  description = "Public Security Group ID"
  value       = aws_security_group.public.id
}

output "private_security_group_id" {
  description = "Private Security Group ID"
  value       = aws_security_group.private.id
}
