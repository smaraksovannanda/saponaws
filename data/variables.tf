variable "server_name" {
  type = string
}
variable "instancetype" {
  type = string
  #default = "t2.large"
}
# variable "image_id" {
#   type        = string
#   description = ""
# }
variable "private_ip" {
  type = string
}
variable "private_ip_db" {
}
variable "key_name" {
  type        = string
  description = ""
}
variable "root_volume_type" {
  type        = string
  description = ""
}
variable "root_ebssize" {
  type        = string
  description = ""
}

####### Security Group ########

# variable "vpc_id" {
# }
variable "sg_name" {
}
variable "from_port" {
}
variable "ip_protocol" {
}
variable "to_port" {
}
# variable "sg" {
#   type        = string
#   description = ""
# }

#######################
# variable "iam_profile" {
#   type        = string
#   description = ""
# }
/*variable "vpc_id" {
  type        = string
  description = ""
}
variable "subnet_id" {
  type        = string
  description = ""
}
# variable "security_groups" {
#   type        = string
#   description = ""
# }
variable "kms_id" {
}
*/
###### SAP VM TAGS ######

variable "PRIMARYCONTACT" {
}
variable "Client_ID" {
}
variable "DailyBackups" {
}
variable "FUNCTION" {
}
variable "Environment" {
}
variable "OS" {
}
variable "PatchGroup" {
}
variable "Platform" {
}
variable "CostCenter" {
}
variable "weeklybackup" {
}
variable "monthlybackup" {
}
variable "SID" {
}
variable "REGION" {
}
variable "VirtualIP" {
}

######################### EBS Tags ######################################
variable "hana_shared_ebs_name" {
}
/*variable "hana_data_ebs_name" {
}
variable "hana_log_ebs_name" {
}
variable "usr_sap_ebs_name" {
}
variable "swap_ebs_name" {
}
variable "usr_sap_trans_ebs_name" {
}
variable "sapmnt_ebs_name" {
}
*/
################# hana/shared ##############

variable "hana_shared_az" {
}
variable "hana_shared_type" {
}
variable "hana_shared_size" {
}
variable "hana_shared_device_name" {
}
variable "hana_shared_iops" {
}

/*################# hana/data ##############

variable "hana_data_az" {
}
variable "hana_data_type" {
}
variable "hana_data_size" {
}
variable "hana_data_device_name" {
}
variable "hana_data_iops" {
}

################# hana/log ##############

variable "hana_log_az" {
}
variable "hana_log_type" {
}
variable "hana_log_size" {
}
variable "hana_log_device_name" {
}
variable "hana_log_iops" {
}

################# usr/sap ##############

variable "usr_sap_az" {
}
variable "usr_sap_type" {
}
variable "usr_sap_size" {
}
variable "usr_sap_device_name" {
}
variable "usr_sap_iops" {
}

################# swap ##############

variable "swap_az" {
}
variable "swap_type" {
}
variable "swap_size" {
}
variable "swap_device_name" {
}
variable "swap_iops" {
}

################ usr/sap/trans ########
variable "usr_sap_trans_az" {
}
variable "usr_sap_trans_type" {
}
variable "usr_sap_trans_size" {
}
variable "usr_sap_trans_device_name" {
}
variable "usr_sap_trans_iops" {
}

############## sapmnt ##############

variable "sapmnt_az" {
}
variable "sapmnt_type" {
}
variable "sapmnt_size" {
}
variable "sapmnt_device_name" {
}
variable "sapmnt_iops" {
}
*/
######################### EFS ########################
variable "efs_vpc_id" {
}
variable "efs_pvt_sub_01" {
}
variable "efs_pvt_sub_02" {
}
# variable "efs_sg" {
# }
variable "efs_name" {
}
variable "performance_mode" {
}
variable "throughput_mode" {
}
variable "availability_zone_name" {
}
