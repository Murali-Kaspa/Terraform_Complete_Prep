output "instance_public_ip" {
  description = "Show instance Public IP"
  value       = aws_instance.one.public_ip
}
