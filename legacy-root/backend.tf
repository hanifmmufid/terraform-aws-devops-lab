terraform {
  backend "s3" {
    bucket       = "hanifmmufid-devops-lab-tfstate-202606"
    key          = "terraform-aws-devops-lab/terraform.tfstate"
    region       = "ap-southeast-1"
    encrypt      = true
    use_lockfile = true
  }
}
