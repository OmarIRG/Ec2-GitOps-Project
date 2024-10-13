
module "vpc" {
  source    = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
  vpc_name   = "my-vpc"
  public_subnet_ids = module.subnets.public_subnet_ids
}

module "subnets" {
  source              = "./modules/subnets"
  vpc_id              = module.vpc.vpc_id
  public_subnet_cidrs = "10.0.1.0/24"
  availability_zones  = "ca-central-1a"
}

module "ec2" {
  source             = "./modules/ec2"
  vpc_id             = module.vpc.vpc_id
  public_subnet_id   = module.subnets.public_subnet_ids  # Select the first public subnet for EC2
  # Required variables for the EC2 module
  ami               = var.ami               # Add the AMI you want to use for EC2 instances
  instance_type     = var.instance_type     # Define the EC2 instance type (e.g., t2.micro)
}

