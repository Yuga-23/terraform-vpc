variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "amis" {
    description = "AMIs by region"
    default = {
        us-east-1 = "ami-0533f2ba8a1995cf9" # ubuntu 14.04 LTS
		us-east-2 = "ami-089c6f2e3866f0f14" # ubuntu 14.04 LTS
		us-west-1 = "ami-0a245a00f741d6301" # ubuntu 14.04 LTS
		us-west-2 = "ami-05b622b5fa0269787" # ubuntu 14.04 LTS
    }
}
variable "yuga" {
  description = "Yuga"
  type        = string
  default     = "Yugandhar"
}

variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "key_name" {}
variable "public_subnet1_cidr" {}
variable "public_subnet2_cidr" {}
variable "public_subnet3_cidr" {}
variable "private_subnet_cidr" {}
variable "public_subnet1_name" {}
variable "public_subnet2_name" {}
variable "public_subnet3_name" {}
variable "private_subnet_name" {}
variable Main_Routing_Table {}
variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = "list"
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
variable "environment" { default = "dev" }
variable "instance_type" {
  type = "map"
  default = {
    dev = "t2.nano"
    test = "t2.micro"
    prod = "t2.medium"
    }
}

