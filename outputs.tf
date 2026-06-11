output "vpc_id" {
  description = "Custom VPC ID"
  value       = aws_vpc.this.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.this.id
}

output "route_table_id" {
  description = "Public route table ID"
  value       = aws_route_table.public.id
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "Public IP EC2"
  value       = aws_instance.this.public_ip
}

output "ssh_command" {
  description = "Command untuk SSH ke EC2"
  value       = "ssh -i ~/.ssh/aws-devops-lab ubuntu@${aws_instance.this.public_ip}"
}

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.this.id
}
