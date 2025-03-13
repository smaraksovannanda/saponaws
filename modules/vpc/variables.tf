variable "tag_name" {
   default = "prod-vpc"
}

variable "vpc-cidr" {
}

variable "basename" {
   description = "Prefix used for all resources names"
   default = "nbo"
}

#map of maps for create subnets
variable "prefix" {
   type = map
   default = {
      sub-1 = {
         az = "var.az1"
         cidr = "var.cidr1"
      }
      sub-2 = {
         az = "var.az2"
         cidr = "var.cidr2"
      }
      sub-3 = {
         az = "var.az3"
         cidr = "var.cidr3"
      }
   }
}