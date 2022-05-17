terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = "1.23.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "rancher2" {
  api_url = var.rancher_api_url
  access_key = var.rancher_access_key
  secret_key = var.rancher_secret_key
  insecure = var.rancherSecurity
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.awsRegion
}