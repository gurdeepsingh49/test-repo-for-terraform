terraform {
  required_version = ">= 1.4.0"

  cloud {
    organization = "test-org-by-gurdeep-14-july"

    workspaces {
      name = "git-test-repo-for-terraform"
    }
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

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  force_destroy = true
}
