variable "server_name" {
  type = string
  #default = "t2.large"
}
variable "instancetype" {
  type = string
  #default = "t2.large"
}
variable "image_id" {
  type        = string
  description = ""
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
variable "private_ip" {  
}

#######################
# variable "iam_profile" {
#   type        = string
#   description = ""
# }
variable "vpc_id" {
  type        = string
  description = ""
}
variable "subnet_id" {
  type        = string
  description = ""
}
variable "vpc_security_group_ids" {
  
}
# variable "kms_id" {
  
# }

##### SAP VM TAGS ######

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
