#This Terraform Code Deploys Basic VPC Infra.
provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "workspacebucket01"
    key    = "production.tfstate"
    region = "us-east-1"
  }
}