terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "akhil-s3-demo-xyz3"
    region         = "us-west-2"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
