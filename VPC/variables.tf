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
