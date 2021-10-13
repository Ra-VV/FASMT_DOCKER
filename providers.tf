# providers.tf
provider "aws" {
  profile = "mfa"
  region  = "${var.region}"
  default_tags {
    tags = {
      Environment = "${terraform.workspace}"
      Owner       = "${var.name}"
    }
  }
}

provider "docker"{
  host = "unix:///var/run/docker.sock"
  registry_auth {
    address  = local.aws_ecr_url
  }
}