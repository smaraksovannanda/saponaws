# data "aws_ami" "sap-vm" {
#   most_recent = true
# }
data "aws_vpc" "nprd" {
  filter {
    name = "tag:Name"
    values = ["default"]
  }
}
data "aws_subnet" "pub_subnet" {
  filter {
    name   = "tag:Name"
    values = ["Pub_subnet"]
  }  
}
data "aws_kms_key" "poc_terraform" {
  key_id = "alias/POC_terraform"
}
# data "aws_security_group" "sg" {
#   filter {
#     name = "tag:Name"
#     values = ["terraform_poc"]
#   }
# }

###### Application Server ######

module "sap-vm" {
  source           = "../modules/ec2"
  depends_on = [ module.poc_sg ]
  #image_id         = var.image_id
  image_id = data.aws_ami.sap-vm.id
  instancetype     = var.instancetype
  server_name      = var.server_name
  key_name         = var.key_name
  vpc_security_group_ids = module.poc_sg.security_group_id
  root_volume_type = var.root_volume_type
  root_ebssize     = var.root_ebssize
  # iam_profile = var.iam_profile
  vpc_id     = data.aws_vpc.nprd.id
  subnet_id  = data.aws_subnet.pub_subnet.id
  kms_id     = data.aws_kms_key.poc_terraform.arn
  private_ip = var.private_ip
  ########## EC2 TAGS ########
  PRIMARYCONTACT = var.PRIMARYCONTACT
  Client_ID      = var.Client_ID
  DailyBackups   = var.DailyBackups
  FUNCTION       = var.FUNCTION
  Environment    = var.Environment
  OS             = var.OS
  PatchGroup     = var.PatchGroup
  Platform       = var.Platform
  CostCenter     = var.CostCenter
  weeklybackup   = var.weeklybackup
  monthlybackup  = var.monthlybackup
  SID            = var.SID
  REGION         = var.REGION
  VirtualIP      = var.VirtualIP
}

module "poc_sg" {
  source      = "../modules/sg"
  vpc_id      = data.aws_vpc.nprd.id
  from_port   = var.from_port
  to_port     = var.to_port
  sg_name     = var.sg_name
  ip_protocol = var.ip_protocol
}

module "ebs-volumes" {
  source      = "../modules/ebs"
  kms_id      = data.aws_kms_key.poc_terraform.arn
  instance_id = module.sap-vm.sap-vm-instance-id
  server_name = var.server_name
  disk = {
    "hanashared"  = { name = var.hana_shared_ebs_name, disk_size = var.hana_shared_size, disk_type = var.hana_shared_type, iops = var.hana_shared_iops, disk_az = var.hana_shared_az, disk_device_name = var.hana_shared_device_name }
   /* "hanadata"    = { name = var.hana_data_ebs_name, disk_size = var.hana_data_size, disk_type = var.hana_data_type, iops = var.hana_data_iops, disk_az = var.hana_data_az, disk_device_name = var.hana_data_device_name }
    "hanalog"     = { name = var.hana_log_ebs_name, disk_size = var.hana_log_size, disk_type = var.hana_log_type, iops = var.hana_log_iops, disk_az = var.hana_log_az, disk_device_name = var.hana_log_device_name }
    "usrsap"      = { name = var.usr_sap_ebs_name, disk_size = var.usr_sap_size, disk_type = var.usr_sap_type, iops = var.usr_sap_iops, disk_az = var.usr_sap_az, disk_device_name = var.usr_sap_device_name }
    "swap"        = { name = var.swap_ebs_name, disk_size = var.swap_size, disk_type = var.swap_type, iops = var.swap_iops, disk_az = var.swap_az, disk_device_name = var.swap_device_name }
    "usrsaptrans" = { name = var.usr_sap_trans_ebs_name, disk_size = var.usr_sap_trans_size, disk_type = var.usr_sap_trans_type, iops = var.usr_sap_trans_iops, disk_az = var.usr_sap_trans_az, disk_device_name = var.usr_sap_trans_device_name }
    "sapmnt"      = { name = var.sapmnt_ebs_name, disk_size = var.sapmnt_size, disk_type = var.sapmnt_type, iops = var.sapmnt_iops, disk_az = var.sapmnt_az, disk_device_name = var.sapmnt_device_name }
    */
  }

}

module "efs" {
  source                 = "../modules/efs"
  efs_vpc_id             = var.efs_vpc_id
  efs_name               = var.efs_name
  efs_pvt_sub_01         = var.efs_pvt_sub_01
  efs_pvt_sub_02         = var.efs_pvt_sub_02
  kms_id                 = data.aws_kms_key.poc_terraform.arn
  performance_mode       = var.performance_mode
  throughput_mode        = var.throughput_mode
  availability_zone_name = var.availability_zone_name
  vpc_security_group_ids = module.poc_sg.security_group_id
  
}