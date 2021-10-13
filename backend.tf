# backend.tf
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }

  backend "s3" {
    bucket = "fasmt02-rgoralski-tfstate"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}