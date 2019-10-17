# No changes required here.
provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {}
}