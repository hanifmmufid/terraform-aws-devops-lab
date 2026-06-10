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
