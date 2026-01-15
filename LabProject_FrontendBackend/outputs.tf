output "frontend_public_ip" {
  description = "Public IP of frontend Nginx server"
  value       = aws_instance.frontend.public_ip
}

output "backend_public_ips" {
  description = "Public IPs of backend HTTPD servers"
  value       = aws_instance.backend[*].public_ip
}

output "backend_private_ips" {
  description = "Private IPs of backend HTTPD servers"
  value       = aws_instance.backend[*].private_ip
}

output "frontend_url" {
  description = "URL to access the frontend"
  value       = "http://${aws_instance.frontend.public_ip}"
}

output "ssh_command_frontend" {
  description = "SSH command for frontend"
  value       = "ssh -i ${var.ssh_private_key_path} ec2-user@${aws_instance.frontend.public_ip}"
}
