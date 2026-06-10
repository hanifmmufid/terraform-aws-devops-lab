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
