variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "app_subnet_cidrs" {
  description = "List of application subnet CIDRs"
  type        = list(string)
}

variable "db_subnet_cidrs" {
  description = "List of DB subnet CIDRs"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones to use"
  type        = list(string)
}

variable "pem_key" {
  description = "Key pair name for EC2"
  type        = string
}

variable "instance_type" {
  description = "specifying the image"
  type = string
}

variable "image_id" {
  description = "image being used AMI"
  type = string
  
}