terraform {
  required_version = ">= 1.5.0"
  backend "s3" {
    bucket         = "alex-terraform-state-king-1024"
    key            = "3tier/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
