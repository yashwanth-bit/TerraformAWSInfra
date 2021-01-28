variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "ami" {
    description = "AMIs by region"
    default = {
        us-east-1 = "ami-096fda3c22c1c990a" # Red Hat Enterprise Linux 8
		us-east-2 = "ami-0a0ad6b70e61be944" # Amazon Linux 2 AMI
		us-west-1 = "ami-00831fc7c1e3ddc60" # ubuntu 20.4 LTS
		us-west-2 = "ami-0831fe8c0427acf5b" # Microsoft Windows Server 2019 Base
    }
}

variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "key_name" {}
variable "role_name" {}
variable "int_profile" {}
variable "attachrole" {}
variable "policyname" {}
variable "cidrs" {
  description = "Cidr block for subnet"
  type = "list"
  default = ["172.168.1.0/24", "172.168.2.0/24", "172.168.3.0/24"]
}

variable "avialabilty_zones" {
  description = "Availabilty Zones for Subnet"
  type = "list"
  default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable Main_Routing_Table {}
variable "environment" { default = "dev" }
variable "instance_type" {
  type = "map"
  default = {
    dev = "t2.nano"
    test = "t2.micro"
    prod = "t2.medium"
    }
}
