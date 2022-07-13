variable "region" {
  type        = string
  description = "Select the region."
  default     = "us-east-1"
}

variable "avaZone" {
  type        = string
  description = "Availability Zone"
  default     = "us-east-1a"
}

variable "cidr" {
  type        = string
  description = "Select the CIDR for the VPC."
  default     = "172.16.0.0/16"
}

variable "subcidr" {
  type        = string
  description = "Select the CIDR Block for the new Subnet."
  default     = "172.16.10.0/24"
}

variable "public" {
  type        = string
  description = "Make this subnet Public"
  default     = "false"
}

variable "dnsSupport" {
  type        = string
  description = "DNS support in the VPC."
  default     = "true"
}

variable "hostSupport" {
  type        = string
  description = "DNS hostnames in the VPC"
  default     = "false"
}

variable "vpcName" {
  type        = string
  description = "Type the name of your VPC"
  default     = "MyVPC"
}

variable "subnetName" {
  type        = string
  description = "Type the name of your new Subnet."
  default     = "MySubnet"
}

variable "igName" {
  type        = string
  description = "Type the name of your new Internet Gateway."
  default     = "MyIG"
}

variable "usrName" {
  type = string
  description = "Type the user name"
  default = "user01"
}

variable "usrPasswd" {
  type = string
  description = "Type the password"
  default = "P@ssw0rd1!P@ssw0rd1!"
}
