variable "ami" {
  description = "AMI ID for the instances"
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
}

variable "public_subnet_id" {
  description = "ID of the public subnet for the bastion host"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}
