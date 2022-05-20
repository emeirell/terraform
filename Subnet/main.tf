###########################################################################
# Terraform required providers                                            #
###########################################################################
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# Use data sources allow configuration to be
# generic for any region
data "aws_region" "current" {}
data "aws_availability_zones" "available" {}

# Create a Subnet

resource "aws_subnet" "main" {
  vpc_id     = var.vpcID
  cidr_block = var.cidr

  tags = {
    Name = var.subnetName
  }
}
