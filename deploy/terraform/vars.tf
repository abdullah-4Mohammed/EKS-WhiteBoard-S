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
}

