# variables.tf
variable "region"{
  type        = string
  default     = "eu-central-1"
}

variable "name" {
  description = "value"
  type        = string
  default     = "rgoralski"
}

variable "tasknumber" {
  type        = string
  default     = "FASMT02"
}

variable "aws_region" {
  type    = string
  default = "eu-central-1"
}