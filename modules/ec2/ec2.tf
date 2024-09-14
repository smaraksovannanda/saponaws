resource "aws_instance" "sap-vm" {
  ami = var.image_id
  instance_type               = var.instancetype
  #  count=1
  key_name                    = var.key_name
  vpc_security_group_ids = [var.vpc_security_group_ids]
  # iam_instance_profile        = var.iam_profile
  subnet_id                   = var.subnet_id
  associate_public_ip_address = false
  source_dest_check           = false
  disable_api_termination     = false
  private_ip                  = var.private_ip

  tags = {
    Terraform = true
    Name      = var.server_name
    PRIMARYCONTACT = var.PRIMARYCONTACT
    Client_ID = var.Client_ID
    DailyBackups = var.DailyBackups
    FUNCTION = var.FUNCTION
    Environment = var.Environment
    OS = var.OS
    PatchGroup = var.PatchGroup
    Platform = var.Platform
    CostCenter = var.CostCenter
    weeklybackup = var.weeklybackup
    monthlybackup = var.monthlybackup
    SID = var.SID
    REGION = var.REGION
    VirtualIP = var.VirtualIP
  }
  /* Root Disk */
  root_block_device {
    volume_size = var.root_ebssize
    volume_type = var.root_volume_type
    /* VOLUME_KMS_KEY = var.VOLUME_KMS_KEY */
    encrypted             = true
    kms_key_id            = var.kms_id
    delete_on_termination = true
    tags = {
      Name = "${var.server_name}-root"
    }
  }
}
resource "aws_ec2_instance_state" "sap-vm" {
  instance_id = aws_instance.sap-vm.id
  state       = "stopped"
}
