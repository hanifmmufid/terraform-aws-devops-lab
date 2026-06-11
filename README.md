# Terraform AWS DevOps Lab

Terraform project untuk membuat EC2 DevOps Lab di AWS.

## Resources

- EC2 Ubuntu
- Security Group
- SSH Key Pair

## Usage

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
SSH

Setelah apply:

terraform output ssh_command
Destroy
terraform destroy
Notes

Jangan commit:

terraform.tfvars
terraform.tfstate
.terraform/

---

# 33.13 Format dan Validasi Terraform

## Custom VPC Architecture

```text
VPC 10.0.0.0/16
│
├── Public Subnet 10.0.1.0/24
│   └── EC2 Ubuntu
│
├── Internet Gateway
│
└── Public Route Table
    └── 0.0.0.0/0 → Internet Gateway
Resources
aws_vpc
aws_subnet
aws_internet_gateway
aws_route_table
aws_route_table_association
aws_security_group
aws_key_pair
aws_instance

Commit:

```bash id="i2yo54"
git add .
git commit -m "Add custom VPC Terraform architecture"
git push -u origin custom-vpc
