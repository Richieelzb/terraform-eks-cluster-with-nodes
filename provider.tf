terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.0"
    }
  }

  backend "s3" {
    bucket       = "terraform-practice-lzb-001"
    key          = "kubernetes/terraform.tfstate"
    region       = "eu-west-1"
    //profile      = "default"
    #use_lockfile = true
  }
}

provider "aws" {
  //profile = "default"
  region = var.aws-region
}