terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "hospital_website" {
  source        = "./modules/web_stack"
  domain_name   = var.domain_name
  environment   = var.environment
  enable_https  = var.enable_https
  enable_waf    = var.enable_waf
  hospital_name = var.hospital_name
}
