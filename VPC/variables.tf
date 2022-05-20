variable "region" {
  type        = string
  description = "Select the region."
  default     = "us-east-1"
}

variable "cidr" {
  type        = string
  description = "Select the CIDR for the VPC."
  default     = "172.16.0.0/16"
}

variable "vpcName" {
  type        = string
  description = "Type the name of your VPC"
  default     = "MyVPC"
}

variable "dnsSupport" {
  type        = string
  description = "DNS support in the VPC."
  default     = "True"
}

variable "hostSupport" {
  type        = string
  description = "DNS hostnames in the VPC"
  default     = "True"
}
