output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.z2ec2_vpc.id
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.z2ec2_instance.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.z2ec2_instance.public_ip
}

output "instance_private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.z2ec2_instance.private_ip
}
