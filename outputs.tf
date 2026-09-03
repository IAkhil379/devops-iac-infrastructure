output "vpc_id" {
  value       = aws_vpc.main.id
  description = "The target generated unique tracking ID for the custom VPC"
}

output "web_server_public_ip" {
  value       = aws_instance.web_server.public_ip
  description = "The dynamically assigned public interface route address to locate the web instance"
}
