variable "region" {
  type = string
  description = "Choose the region to create the VPC."
  default     = "sa-east-1"
}

variable "name" {
  type        = string
  description = "Choose a name to the VPC."
  default     = "vpc_name"
}

variable "cidr" {
  type        = string
  description = "Type the CIDR for this VPC"
  default     = "172.16.100.0/24"
}

variable "tags" {
  type        = list(object({key = string, value = string}))
  description = "Add the desired tags to the VPC."
  default     = [
                  { key = "environment", value = "development"},
                  { key = "department", value = "legal"}
                ]
}
