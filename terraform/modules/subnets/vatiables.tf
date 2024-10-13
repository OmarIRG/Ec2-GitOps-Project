variable "vpc_id" {
  description = "The ID of the VPC where the subnets will be created"
}

variable "public_subnet_cidrs" {
  description = "CIDR block for public subnets"
  type        = string
}

variable "availability_zones" {
  description = "availability zone in which to create subnets"
  type        = string
}
