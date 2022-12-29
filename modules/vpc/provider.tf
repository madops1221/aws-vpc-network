terraform {
  required_providers {
    aws = {
      source  = "registry.terraform.io/hashicorp/aws"
      version = "~> 4.0"
    }
  }

}
provider "aws" {
  region = var.region_name

  default_tags {
    tags = {
      "Application" = "CoddlerBox"
      "Tool"        = "Terragrunt-managed-resource"
    }

  }
}
