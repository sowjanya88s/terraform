terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.37.0" # aws provider version
    }
  }
}

provider "aws" {
  # Configuration options
  backend "s3" {
    bucket = "sowjanya.fun-remote-state-357323381515-us-east-1-an "
    key    = "terraform.tfstate.remote"
    region = "us-east-1"
    use_lockfile = true
  }
}