terraform {
  required_version = "~> 0.14"

  backend "remote" {
    organization = "anarosh"

    workspaces {
      name = "flask-app"
    }
  }
}

provider "aws" {
  region = var.region
}

data "terraform_remote_state" "prod" {
  backend = "remote"
  config = {
    organization = "anarosh"
    workspaces = {
      name = "prod-aws"
    }
  }
}