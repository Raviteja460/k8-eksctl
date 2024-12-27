terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "devops474-remote-state"
    key    = "eksctl"
    region = "us-east-1"
    dynamodb_table = "devops474-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}