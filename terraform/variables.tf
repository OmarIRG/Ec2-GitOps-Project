# No additional variables needed right now
variable "ami" {
  description = "AMI ID to use for the EC2 instances"
  type        = string
  default     = "ami-0eb9fdcf0d07bd5ef"  # Replace this with your desired AMI ID
}

variable "instance_type" {
  description = "Instance type to use for the EC2 instances"
  type        = string
  default     = "t2.micro"  # You can change this to any instance type you need
}


variable "web_server_port" {
  description = "The port on which the web server is running"
  type        = number
  default     = 80  # You can change this if necessary
}
