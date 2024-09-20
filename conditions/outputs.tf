output "public_ip" {
  value       = aws_instance.terraform.public_ip
  sensitive   = false
  description = "This is the public ip of instance created"
}


output "private_ip" {
  value       = aws_instance.terraform.private_ip
  sensitive   = false
  description = "This is the public ip of instance created"
}

output "instance_state" {
  value       = aws_instance.terraform.instance_state
  sensitive   = false
  description = "This is the terraform server instance state"
}

