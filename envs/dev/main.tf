data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name = "name"
    values = [
      "ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"
    ]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_key_pair" "this" {
  key_name   = "${var.project_name}-key"
  public_key = file(pathexpand(var.ssh_public_key_path))

  tags = {
    Name    = "${var.project_name}-key"
    Project = var.project_name
  }
}

module "vpc" {
  source = "../../modules/vpc"

  project_name        = var.project_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = data.aws_availability_zones.available.names[0]
}

module "security_group" {
  source = "../../modules/security-group"

  project_name     = var.project_name
  vpc_id           = module.vpc.vpc_id
  vpc_cidr         = var.vpc_cidr
  allowed_ssh_cidr = var.allowed_ssh_cidr
}

module "ec2" {
  source = "../../modules/ec2"

  project_name              = var.project_name
  ami_id                    = data.aws_ami.ubuntu.id
  instance_type             = var.instance_type
  key_name                  = aws_key_pair.this.key_name
  public_subnet_id          = module.vpc.public_subnet_id
  private_subnet_id         = module.vpc.private_subnet_id
  public_security_group_id  = module.security_group.public_security_group_id
  private_security_group_id = module.security_group.private_security_group_id
  root_volume_size          = var.root_volume_size
}
