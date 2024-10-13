resource "aws_subnet" "public" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet_cidrs
  availability_zone = var.availability_zones
  map_public_ip_on_launch = true

  tags = {
    Name = "Final_Project_Subnet"
  }
}
