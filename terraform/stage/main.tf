provider "aws" {
    region = var.region
}

terraform {
  backend "s3" {
    bucket = "smartloto-terraformstate"
    key    = "stage/terraform.tfstate"
    region = "us-east-1"
  }
}

module "s3" {
  source = "../module/"
  env = var.env
  
}
