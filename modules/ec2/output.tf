output "sap-vm-ip-address" {
  value = aws_instance.sap-vm.private_ip
  description = "IP address for SAP VM"
}

output "sap-vm-instance-id" {
  value = aws_instance.sap-vm.id
  description = "Instance ID of SAP VM"
}
output "sap-vm-instance-state" {
  value = aws_instance.sap-vm.instance_state
  
}