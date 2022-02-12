terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.55.0"
    }
    sshcommand = {
      source  = "invidian/sshcommand"
      version = "0.2.0"
    }
  }
}

provider "aws" {
  region = var.region
}

