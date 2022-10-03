terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.29.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}


resource "aws_vpc" "vpc_vra" {
  cidr_block = var.cidr

  tags = merge(
    {for k, v in var.tags : v.key => v.value}
  )
}
