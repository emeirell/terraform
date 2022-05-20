variable "region" {
  type        = string
  description = "Select the region where your VPC is."
  default     = "us-east-1"
}

variable "cidr" {
  type        = string
  description = "Select the CIDR Block for the new Subnet."
  default     = "172.16.10.0/24"
}

variable "subnetName" {
  type        = string
  description = "Type the name of your new Subnet."
  default     = "MySubnet"
}

variable "vpcID" {
  type        = string
  description = "Type the VPC ID where to create your Subnet."
  default     = "VPC_ID_GOES_HERE"
}

variable "public" {
  type        = string
  description = "Make this subnet Public"
  default     = "false"
}

variable "avaZone" {
  type        = string
  description = "Availability Zone"
  default     = "us-east-1a"
}
