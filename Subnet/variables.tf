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
  description = "Type the name of your nee Subnet."
  default     = "MyVPC"
}
