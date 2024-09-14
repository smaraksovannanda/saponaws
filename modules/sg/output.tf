output "security_group_id" {
  value = aws_security_group.poc_sg.id
  description = "sg id"
}
output "security_group_name" {
  description = "The name of the security group"
  value       = aws_security_group.poc_sg.name
}