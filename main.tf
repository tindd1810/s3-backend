terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}

resource "aws_s3_bucket" "tindd-terraform-state-prod" {
    bucket = "tindd-terraform-state-prod"
    versioning {
      enabled = true
    }
    lifecycle {
        prevent_destroy = false
    }
}

resource "aws_s3_bucket" "tindd-terraform-state-dev" {
    bucket = "tindd-terraform-state-dev"
    versioning {
      enabled = true
    }
    lifecycle {
        prevent_destroy = false
    }
}
