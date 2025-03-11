/* Data Disk hana/shared */

resource "aws_ebs_volume" "data_volume" {
  for_each = var.disk
  availability_zone = each.value.disk_az
  size              = each.value.disk_size
  type              = each.value.disk_type
  iops              = each.value.iops
  encrypted  = true
  # kms_key_id = var.kms_id
  tags = {
    Name = each.value.name
  }

}
/* Data Disk attachment For hana-shared */

resource "aws_volume_attachment" "data_volume" {
  for_each = var.disk
  device_name = each.value.disk_device_name
  volume_id   = aws_ebs_volume.data_volume[each.key].id
  instance_id = var.instance_id
  }