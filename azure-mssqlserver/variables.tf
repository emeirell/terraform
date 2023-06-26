variable "rgname" {
  type        = string
  description = "Resource Group Name"
  default     = "mysqlresourcegroup"
}

variable "location" {
  type        = string
  description = "Location"
  default     = "East US"
}

variable "servername" {
  type        = string
  description = "Server Name"
  default     = "mysql01"
}

variable "version" {
  type        = string
  description = "Version"
  default     = "12.0"
}

variable "adminlogin" {
  type        = string
  description = "Administrator Name"
  default     = "dbadmin"
}

variable "adminpasswd" {
  type        = string
  description = "Administrator Password"
  default     = "VMWare1!VMware2!"
}

variable "tlsver" {
  type        = string
  description = "TLS Version"
  default     = "1.2"
}

variable "pub" {
  type        = string
  description = "Public"
  default     = "false"
}
