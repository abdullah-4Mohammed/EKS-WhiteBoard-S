terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.42.0" #"4.22.0"
    }
  }
  backend "s3" {
    bucket = "${local.backendBucket}"
    key    = "${local.key}"
    region = "${local.region}"
  }
}

provider "aws" {
  region = "${local.region}"
}

