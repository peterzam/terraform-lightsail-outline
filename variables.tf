variable "pub_key" {
  type        = string
  description = "SSH Public Key"
}

variable "private_key" {
  type        = string
  description = "SSH Private Key"
}

variable "pub_key_name" {
  type        = string
  description = "Name for Public Key in AWS"
}

variable "name" {
  type        = string
  description = "Instance Name"
}

variable "region" {
  default     = "ap-southeast-1"
  type        = string
  description = "Region"
}

variable "zone" {
  default     = "a"
  type        = string
  description = "E.g. a, b, c"
}

variable "image" {
  default     = "ubuntu_20_04"
  type        = string
  description = "ubuntu_20_04, ubuntu_18_04, ubuntu_16_04_2, debian_10, debian_9_13, debian_8_7, centos_8, centos_7_2009_01"
}

variable "size" {
  default     = "micro"
  type        = string
  description = "nano, micro, small, medium, large, xlarge, 2xlarge"
}

variable "username" {
  default     = "ubuntu"
  type        = string
  description = "SSH login Username"
}


variable "keys_port" {
  default     = "20000"
  type        = string
  description = "Port no for Outline Access Keys"
}

variable "api_port" {
  default     = "10000"
  type        = string
  description = "Port no for Outline Management API"
}
