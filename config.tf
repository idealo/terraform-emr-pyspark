terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-persistence"
    key     = "terraform-emr-pyspark.tfstate"
    region  = "us-west-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}
