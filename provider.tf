terraform {
  cloud "remote" {
    organization = "Lee-personal-project"

    workspaces {
      name = "lee-aviatrix-demo"
    }
  }
}

provider "aws" {
  region = var.region
}