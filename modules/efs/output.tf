output "efs-output-id" {
  value = aws_efs_file_system.efs-storage.id
  description = "I.D. of EFS"
}

output "efs-mount-01-output-id" {
  value = aws_efs_mount_target.efs-mount-01.id
  description = "I.D. of EFS Mountpoint 1"
}

output "efs-mount-02-output-id" {
  value = aws_efs_mount_target.efs-mount-02.id
  description = "I.D. of EFS Mountpoint 2"
}