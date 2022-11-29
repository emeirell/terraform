variable "org" {
  type        = string
  description = "Org URL"
  default     = "https://dev.azure.com/emeirelles/"
}

variable "projname" {
  type        = string
  description = "Project Name"
  default     = "Project-01"
}

variable "projdesc" {
  type        = string
  description = "Project Description"
  default     = "Top Secret Project"
}

variable "token" {
  type        = string
  description = "Personal Token"
  default     = "Your Token goes here"
}

variable "visibility" {
  type        = string
  description = "Project Visibility"
  default     = "private"
}

variable "boards" {
  type        = string
  description = "Enable Boards"
  default     = "disabled"
}

variable "repositories" {
  type        = string
  description = "Enable Repositories"
  default     = "disabled"
}

variable "pipelines" {
  type        = string
  description = "Enable Pipelines"
  default     = "disabled"
}

variable "testplans" {
  type        = string
  description = "Enable TestPlans"
  default     = "disabled"
}

variable "artifacts" {
  type        = string
  description = "Enable Artifacts"
  default     = "disabled"
}
