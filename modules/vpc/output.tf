output "sub-1-cidr" {
  value = aws_subnet.main-subnet
}
output "vpc_id" {
  value = aws_vpc.prod-vpc.id
}
