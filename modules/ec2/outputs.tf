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
