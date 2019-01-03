terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-persistence"
    key     = "terraform-emr-pyspark.tfstate"
    region  = "eu-central-1"
  }
}

provider "aws" {
  version    = "~> 1.0"
  region     = "${var.region}"
}
