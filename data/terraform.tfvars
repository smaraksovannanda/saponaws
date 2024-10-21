################ sap vm ##########
server_name      = "terraform_poc"
instancetype     = "t3.micro"
image_id         = "ami-0e53db6fd757e38c7"
key_name         = "smarak"
root_volume_type = "gp3"
root_ebssize     = 75
# iam_profile = "ec2-ssm"cd Mycd MyP    
#vpc_id    = "vpc-0ca9ab6123163f6fc"
#subnet_id = "subnet-01721986341fcb046"
# security_groups = "sg-0c257f59bf3b9bb77"
#kms_id     = "arn:aws:kms:ap-south-1:194722400927:key/ef23ec6f-de29-4452-8fa0-770916cb8644"
private_ip = "172.31.16.159"
private_ip_db = "172.31.16.160"

############## sap vm Tags ##########

PRIMARYCONTACT = "Iron Man"
Client_ID      = "Arsenal"
DailyBackups   = "Scheduled at 11.30pm EST"
FUNCTION       = "Chin Tapak Dum Dum"
Environment    = "Faltu"
OS             = "Linux"
PatchGroup     = "Linux"
Platform       = "Training"
CostCenter     = "1Dev_9981"
weeklybackup   = "yes"
monthlybackup  = "yes"
SID            = "abc"
REGION         = "Mumbai"
VirtualIP      = "172.27.163.160"

############## security group ##########

sg_name     = "terraform_poc"
from_port   = "22"
ip_protocol = "tcp"
to_port     = "22"

############ hana/shared ############
hana_shared_az          = "ap-south-1c"
hana_shared_type        = "gp3"
hana_shared_size        = 70
hana_shared_device_name = "/dev/sdh"
hana_shared_iops        = 3000
hana_shared_ebs_name    = "terraform_poc-hana-shared"

############ hana/data ##############
/*hana_data_az          = "ap-south-1c"
hana_data_type        = "io1"
hana_data_size        = 100
hana_data_device_name = "/dev/xvdc"
hana_data_iops        = 3000
hana_data_ebs_name    = "terraform_poc-hana-data"

############ hana/log #################
hana_log_az          = "ap-south-1c"
hana_log_type        = "io1"
hana_log_size        = 100
hana_log_device_name = "/dev/xvdd"
hana_log_iops        = 3000
hana_log_ebs_name    = "terraform_poc-hana-log"

############ usr/sap #################
usr_sap_az          = "ap-south-1c"
usr_sap_type        = "gp3"
usr_sap_size        = 10
usr_sap_device_name = "/dev/xvde"
usr_sap_iops        = 3000
usr_sap_ebs_name    = "terraform_poc-usr-sap"

############ swap #################
swap_az          = "ap-south-1c"
swap_type        = "gp3"
swap_size        = 10
swap_device_name = "/dev/xvdf"
swap_iops        = 3000
swap_ebs_name    = "terraform_poc_swap"

########## usr/sap/trans ############
usr_sap_trans_az          = "ap-south-1c"
usr_sap_trans_type        = "gp3"
usr_sap_trans_size        = 10
usr_sap_trans_device_name = "/dev/xvdg"
usr_sap_trans_iops        = 3000
usr_sap_trans_ebs_name    = "terraform_poc_usr_sap_trans"

########## sapmnt ###############
sapmnt_az          = "ap-south-1c"
sapmnt_type        = "gp3"
sapmnt_size        = 10
sapmnt_device_name = "/dev/xvdh"
sapmnt_iops        = 3000
sapmnt_ebs_name    = "terraform_poc_sapmnt"
*/
############ EFS #############
efs_vpc_id     = "vpc-0ca9ab6123163f6fc"
efs_pvt_sub_01 = "subnet-01721986341fcb046"
efs_pvt_sub_02 = "subnet-0505ef134643e49cb"
# efs_sg = ""
efs_name               = "terraform_POC/interface"
performance_mode       = "generalPurpose"
throughput_mode        = "elastic"
availability_zone_name = "regional"

