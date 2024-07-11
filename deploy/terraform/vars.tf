variable "environment" {
  type = string
}

variable "serviceShortName" {
  type = string
}

variable "regionShortName" {
  type = string
}

variable "backendBucket" {
  type = string
}
// this test
variable "region" {
  type = string
}

locals {
  resourceName = "Az-aws-${var.serviceShortName}-${var.environment}-${var.regionShortName}"
  key = "tf/${var.environment}.tfstate"
  region = "${var.region}"
  backendBucket = "${var.backendBucket}"

  vpc_cidr = "10.123.0.0/16"
  azs      = ["${var.region}a", "${var.region}b"]

  public_subnets  = ["10.123.1.0/24", "10.123.2.0/24"]
  private_subnets = ["10.10.3.0/24", "10.10.4.0/24"]
  intra_subnets   = ["10.10.5.0/24", "10.10.6.0/24"]
}

