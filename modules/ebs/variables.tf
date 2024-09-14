variable "instance_id" {  
}
variable "kms_id" {
  type = string
}
variable "server_name" {
  type = string
  #default = "t2.large"
}
variable disk {
  type = map(object({
    disk_size = string
    disk_type = string
    disk_device_name  = string
    disk_az = string
    iops = string
    name = string
   }))
}