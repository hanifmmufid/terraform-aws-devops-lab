# Terraform AWS DevOps Lab

Terraform project untuk belajar Infrastructure as Code di AWS.

## Structure

```text
modules/
├── vpc/
├── security-group/
└── ec2/

envs/
└── dev/
Modules
vpc

Membuat:

VPC
Public subnet
Private subnet
Internet Gateway
Public route table
Private route table
security-group

Membuat:

Public security group
Private security group
ec2

Membuat:

Public EC2
Private EC2
Dev Environment

Masuk ke folder:

cd envs/dev

Jalankan:

terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
SSH
terraform output -raw ssh_public_command
terraform output -raw ssh_private_via_bastion_command
Notes

Jangan commit:

terraform.tfvars
terraform.tfstate
.terraform/
