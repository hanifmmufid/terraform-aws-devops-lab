# Terraform CI/CD

## Flow

```text
Pull Request
  ↓
terraform fmt -check
  ↓
terraform init
  ↓
terraform validate
  ↓
terraform plan
Environment
Current environment:

￼
envs/dev
Secrets
Required GitHub Actions secrets:

￼
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION
Notes
Apply is still manual for safety.
