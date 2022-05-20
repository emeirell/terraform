variable "region" {
  type        = string
  description = "Select the region."
  default     = "us-east-1"
}

variable "cidr" {
  type        = string
  description = "Select the CIDR for the VPC."
  default     = "10.0.0.0/16"
}
