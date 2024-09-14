resource "aws_efs_file_system" "efs-storage" { 
  encrypted          = "true"
  kms_key_id            = var.kms_id
  performance_mode   = var.performance_mode
  throughput_mode    = var.throughput_mode
  # availability_zone_name = var.availability_zone_name  
  tags = {
      Name = var.efs_name
    }
} 

resource "aws_efs_mount_target" "efs-mount-01" { 
  file_system_id  = aws_efs_file_system.efs-storage.id 
  subnet_id       = var.efs_pvt_sub_01
  security_groups = [var.vpc_security_group_ids]
} 

resource "aws_efs_mount_target" "efs-mount-02" { 
  file_system_id  = aws_efs_file_system.efs-storage.id 
  subnet_id       = var.efs_pvt_sub_02
  security_groups = [var.vpc_security_group_ids]
}

#### Enable automated EFS Backup #####

resource "aws_efs_backup_policy" "policy" {
  file_system_id = aws_efs_file_system.efs-storage.id
  backup_policy {
    status = "ENABLED"
  }
}