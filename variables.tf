variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "common_tags" {
  type = map(any)
  default = {
    project   = "Roboshop"
    terraform = true
    env       = "dev"

  } #leaving {} this braces empty means optional
}

variable "vpc_tags" {
  type = map(any)
  default = {

  }
}

variable "project_name" {
  type    = string # Not creating default {} means mandatory
  default = "Roboshop"
}

variable "environment" {
  type    = string
  default = "Dev"
}

variable "public_subnet_cidr" {
  type    = list(any)
    validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "please, provide 2 cidrs for both the az's"
  }
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_tags" {
  description = "Additional tags for public subnets"
  type        = map(string)
  default     = {}
}

variable "private_subnet_cidr" {
  type    = list(any)
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "please, provide 2 cidrs for both the az's"
  }
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "db_subnet_cidr" {
  type    = list(any)
    validation {
    condition = length(var.db_subnet_cidr) == 2
    error_message = "please, provide 2 cidrs for both the az's"
  }
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "private_subnet_tags" {
  description = "Additional tags for private subnets"
  type        = map(string)
  default     = {}
}

variable "db_subnet_tags" {
  description = "Additional tags for db subnets"
  type        = map(string)
  default     = {}
}

variable "nat_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "db_route_table_tags" {
  default = {}
}

variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}

