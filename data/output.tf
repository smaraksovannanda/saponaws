########### sap-vm output #############
output "sap-vm-id" {
  value = module.sap-vm.sap-vm-instance-id
}
output "sap-vm-ip-address" {
  value = module.sap-vm.sap-vm-ip-address
}
output "sap-vm-instance-state" {
  value = module.sap-vm.sap-vm-instance-state
}

######### SG Output ###################
output "security_group_id" {
  value = module.poc_sg.security_group_id
}
output "security_group_name" {
  value = module.poc_sg.security_group_name
}

########## efs output ##################
output "efs-id" {
  value = module.efs.efs-output-id
}

######## vpc & subnet output ######
output "subnet_id" {
  value = module.vpc.sub-1-cidr
}
output "vpc_id" {
  value = module.vpc.vpc_id
}