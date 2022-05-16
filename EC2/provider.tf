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
  api_url = var.rancherInstance
  access_key = var.rancherAccess
  secret_key = var.rancherSecret
  insecure = var.rancherSecurity
}

provider "aws" {
  access_key = var.awsAccess
  secret_key = var.awsSecret
  region = var.awsRegion
}