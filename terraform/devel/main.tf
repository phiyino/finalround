provider "aws" {
    region = var.region
}

terraform {
  backend "s3" {
    bucket = "mys3demopolicy"
    key    = "infra/terraform.tfstate"
    region = "us-west-2"
  }
}

module "s3" {
  source = "../module/"
  env = var.env
  
}
