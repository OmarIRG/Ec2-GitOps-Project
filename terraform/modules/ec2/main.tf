resource "aws_key_pair" "Ec2_Project_Key" {
  key_name   = "Ec2_Project_Key"
  public_key = file("/home/omar/.ssh/Final_Project.pub")
}

resource "aws_security_group" "Ec2_Project_SG" {
  name        = "Ec2_Project_SG"
  description = "Security group for Bastion host"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Adjust this to your VPC CIDR block
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "Ec2_Project" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  key_name      = aws_key_pair.Ec2_Project_Key.key_name
  vpc_security_group_ids = [aws_security_group.Ec2_Project_SG.id]

  tags = {
    Name = "Ec2 Host"
  }
}
