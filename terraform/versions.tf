terraform {
  required_version = ">= 1.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "switch.hunter.focus"
    key    = "paperize/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "github" {
  owner = "nlovett"
  token = var.github_token
}
