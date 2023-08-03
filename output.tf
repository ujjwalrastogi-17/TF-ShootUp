output "instance_id" {
  description = "The EC2 instance ID"
  value       = aws_instance.webservers.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.webservers.public_ip
}

output "instance_private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.webservers.private_ip
}

output "security_group" {
  description = "The EC2 instance security group ID"
  value       = aws_instance.webservers.vpc_security_group_ids
}

output "key_pair" {
  description = "The EC2 instance key pair name"
  value       = aws_instance.webservers.key_name
}


output "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  value       = aws_instance.webservers.subnet_id
}