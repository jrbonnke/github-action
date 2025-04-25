variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "app_subnet_cidrs" {
  description = "List of app subnet CIDRs"
  type        = list(string)
}

variable "db_subnet_cidrs" {
  description = "List of DB subnet CIDRs"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones to use"
  type        = list(string)
}

variable "key_name" {
  description = "SSH key name for EC2 instances"
  type        = string
}
